#连接数据库
SET NAMES UTF8;
#删除数据库
DROP DATABASE IF EXISTS cake;
#创建数据库
CREATE DATABASE cake CHARSET=UTF8;
#进入数据库
USE cake;
# 新品专区
#创建大图列表
CREATE TABLE cake_max(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);
INSERT INTO cake_max VALUES(null,'a-1.jpg');
#创建NewProduct 商品表

CREATE TABLE cake_newProduct(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(128),
  label01 VARCHAR(64),
  label02 VARCHAR(64),
  label03 VARCHAR(64),
  price VARCHAR(64),
  cart VARCHAR(64),
 
  cart_price VARCHAR(64),
  cart_price02 VARCHAR(64),
  cart_title VARCHAR(64),
  cart_title02 VARCHAR(64),
  cart_buy VARCHAR(64)
);
INSERT INTO cake_newProduct VALUES(null,'b-1.png','米道','天真、天然，是这款蛋糕唯一的出发点','儿童 >','新品 >','生日 >','¥298.00/1.0磅','加入购物车','￥298.00/454g(1.0磅)','￥398.00/908g(2.0磅)','454g   (1.0磅)','908g   (2.0磅)','立即购买');
INSERT INTO cake_newProduct VALUES(null,'b-2.png','(新) 杰瑞','谁动了我的奶酪？！……','儿童 >','聚会 >','新品 >','¥298.00/2.0磅','加入购物车','￥268.00/454g(1.0磅)','￥398.00/908g(2.0磅)','454g   (1.0磅)','908g   (2.0磅)','立即购买');
INSERT INTO cake_newProduct VALUES(null,'b-3.png','黑森林','樱桃酒味从巧克力卷的缝隙飘出','情侣 >','人气 >','七夕节 >','¥398.00/2.0磅','加入购物车','￥268.00/454g(1.0磅)','￥398.00/908g(2.0磅)','454g   (1.0磅)','908g   (2.0磅)','立即购买');
INSERT INTO cake_newProduct VALUES(null,'b-4.png','浅草','浅草才能没马蹄','新品 >','生日 >','相识 >','¥298.00/2.0磅','加入购物车','￥268.00/454g(1.0磅)','￥398.00/908g(2.0磅)','454g   (1.0磅)','908g   (2.0磅)','立即购买');

# 生日专区
# 创建大图列表
CREATE TABLE cake_max02(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);
INSERT INTO cake_max02 VALUES(null,'s-1.jpg');
# 创建birthday 商品表

CREATE TABLE birthday(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(128),
  label01 VARCHAR(64),
  label02 VARCHAR(64),
  label03 VARCHAR(64),
  label04 VARCHAR(64),
  price VARCHAR(64),
  cart VARCHAR(64)
);
INSERT INTO birthday VALUES(null,'s-2.png','百利甜情人','新切的水果与刚折的玫瑰，甜美、渐浓','情侣 >','人气 >','生日 >','结婚 >','¥298.00/2.0磅','加入购物车');
INSERT INTO birthday VALUES(null,'s-3.png','榴莲飘飘','丰厚乳脂奶油，打入足量榴莲果肉','人气 >','生日 >',' ',' ','¥298.00/2.0磅','加入购物车');
INSERT INTO birthday VALUES(null,'s-4.png','黑白巧克力慕斯 彼尔德（HBD）','卡通定制撒粉，简单、柔软','情侣 >','设计师款 >','新品 >',' ','¥298.00/2.0磅','加入购物车');
INSERT INTO birthday VALUES(null,'s-5.png','枣儿','红枣奶油戚风，与姜撞奶慕斯','新品 >','生日 >','','','¥298.00/2.0磅','加入购物车');

# 儿童专区
# 创建大图列表
CREATE TABLE cake_max03(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);
INSERT INTO cake_max03 VALUES(null,'er-1.jpg');
# 创建child 商品表

CREATE TABLE child(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(128),
  label01 VARCHAR(64),
  label02 VARCHAR(64),
  label03 VARCHAR(64),
  label04 VARCHAR(64),
  price VARCHAR(64),
  cart VARCHAR(64)
);
INSERT INTO child VALUES(null,'er-2.png','黑白巧克力慕斯 彼尔德（Party）','“ 孩子的世界，简单到非黑即白。”','儿童 >','新品 >','相识 >',' ','¥298.00/2.0磅','加入购物车');
INSERT INTO child VALUES(null,'er-3.png','米道','一款专为孩子设计的蛋糕','儿童 >','新品 >','生日 >',' ','¥298.00/1.0磅','加入购物车');
INSERT INTO child VALUES(null,'er-4.png','芒果奶油蛋糕','21cake配方芒果百香果慕斯夹心','情侣 >','儿童 >','新品 >','聚会 >','¥198.00/2.0磅','加入购物车');
INSERT INTO child VALUES(null,'er-5.png','百香果酸乳酪慕斯（木糖醇）','冰淇淋口感，不同层次的酸与冰凉','情侣 >','低温 >','新品 >','儿童 >','¥298.00/2.0磅','加入购物车');

# 聚会专区
# 创建大图列表
CREATE TABLE cake_max04(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);
INSERT INTO cake_max04 VALUES(null,'ju-1.jpg');
# 创建gathering 商品表

CREATE TABLE gathering(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(128),
  label01 VARCHAR(64),
  label02 VARCHAR(64),
  label03 VARCHAR(64),
  label04 VARCHAR(64),
  price VARCHAR(64),
  cart VARCHAR(64)
);
INSERT INTO gathering VALUES(null,'ju-2.png','6口味切块','多口味，精装小份','聚会 >','新品 >','人气 >',' ','¥198.00/6个（6种口味）','加入购物车');
INSERT INTO gathering VALUES(null,'ju-3.png','黑白巧克力慕斯','白巧克力慕斯的甜，与黑巧克力酱的苦','聚会 >','生日 >','人气 >',' ','¥298.00/2.0磅','加入购物车');
INSERT INTO gathering VALUES(null,'ju-4.png','朗姆芝士','清香柠檬与乳酪夹心，微苦、微醺','情侣 >','生日 >','情人节 >','','¥298.00/2.0磅','加入购物车');
INSERT INTO gathering VALUES(null,'ju-5.png','冻慕斯与焗芝士','马斯卡彭慕斯，叠加法国软芝士','情侣 >','低温 >','生日 >','','¥298.00/2.0磅','加入购物车');

CREATE TABLE cake_max05(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);
INSERT INTO cake_max05 VALUES(null,'huo-1.jpg');

CREATE TABLE cake_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(128),
  upwd VARCHAR(128)
);
INSERT INTO cake_login VALUES(
  null,'13412311231','dddddd'
)