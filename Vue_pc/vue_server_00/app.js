//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"cake",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
// 2.9 指定静态目录
server.use(express.static("public"))

 server.listen(3000);

//   新品专区
server.get('/cakeMax',(req,res)=>{
  var sql ="SELECT id,img_url FROM cake_max";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
//  NewProduct 内容页
server.get('/newProduct',(req,res)=>{
  var sql ="SELECT id,img_url,title,subtitle,label01,label02,label03,price,cart,cart_price,cart_price02,cart_title,cart_title02,cart_buy FROM cake_newProduct";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

//   生日专区
server.get('/cakeMax02',(req,res)=>{
  var sql ="SELECT id,img_url FROM cake_max02";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
//  birthday 内容页
server.get('/birthday',(req,res)=>{
  var sql ="SELECT id,img_url,title,subtitle,label01,label02,label03,price,cart FROM birthday";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

//   儿童专区
server.get('/cakeMax03',(req,res)=>{
  var sql ="SELECT id,img_url FROM cake_max03";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
//  child 内容页
server.get('/child',(req,res)=>{
  var sql ="SELECT id,img_url,title,subtitle,label01,label02,label03,price,cart FROM child";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

//  大图 聚会专区
server.get('/cakeMax04',(req,res)=>{
  var sql ="SELECT id,img_url FROM cake_max04";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
//  child 内容页
server.get('/gathering',(req,res)=>{
  var sql ="SELECT id,img_url,title,subtitle,label01,label02,label03,price,cart FROM gathering";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

//  大图 活动专区
server.get('/cakeMax05',(req,res)=>{
  var sql ="SELECT id,img_url FROM cake_max05";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})


// 用户注册
server.get("/loginZc",(req,res)=>{
  var uname=req.query.uname;
  var obj=req.query
  console.log(req.query);
  var sql="select * from cake_login where uname=?" 
  //json
  pool.query(sql,[uname],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
        var sqla='insert into cake_login(uname,upwd) values(?,?)'
        pool.query(sqla,[obj.uname,obj.upwd],(err,result)=>{
        res.send({code:200,msg:"注册成功"}) 
        // req.session.uid=result[0].uid;   
      })   
      }else{
        pool.query(sqla,[obj],(err,result)=>{
          res.send({code:301,msg:"注册失败"}) 
          })   
      }
  }) 
})

//完成第一个功能用户登录
server.get("/login",(req,res)=>{
  //1:参数
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  console.log(uname);
  console.log(upwd);
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT id FROM ";
sql +=" cake_login WHERE uname = ?";
sql +=" AND upwd = ?";
  //3:json
  pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length<1){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
        //将当前登录用户uid保存 session对象
        // result=[{id:1}]
        req.session.uid=result[0].id; 
         //??缺少一步
         res.send({code:1,msg:"登录成功"});
      }
  })
})