  // DOM 4步：
  // 1.查找触发事件的元素
  // --查找有data-toggle属性的却属性值为tab的元素
  var as=document.querySelectorAll("#tab>li>[data-toggle=tab]");
  // 创建变量i，用于递增zIndex的数值
  var i=10;
  // 2.绑定事件处理函数
  // --遍历as中每个a
  for(var a of as){
    // 没遍历一个a，就绑定单击事件
    a.onmouseenter=function(){
    // 查找要修改的元素
    // --获得当前a自己身上缓存的对应div的id
    var id=this.getAttribute("data-id");
    // 用id作为查询条件，查询对应的div
    var div=document.getElementById(id);
    // 修改元素
    // --修改div的zIndex属性值高于其他div
    div.style.zIndex=i;
    // --每次设置完，都i+1
    i++;
  }
  }