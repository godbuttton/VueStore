SET NAMES UTF8;
DROP DATABASE IF EXISTS vuestore;
CREATE DATABASE vuestore CHARSET=UTF8;
USE  vuestore;
CREATE TABLE vs_user( #创建用户信息表
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32)
);
INSERT INTO vs_user VALUES
(1, 'u1', '123456'),
(2, 'u2', '123456');

CREATE TABLE vs_product( #创建产品信息表
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(32),
  price FLOAT(10,2),
  introduction VARCHAR(200),
  pic VARCHAR(32)
);
INSERT INTO vs_product VALUES
(1,"康师傅红烧牛肉",4.00,'很好吃的面','../assets/aoliao.jpg'),
(2,"统一红烧牛肉",4.20,'很好吃的面','../assets/aoliao.jpg'),
(3,"统一红烧牛肉",22.5,'很好吃的面','../assets/aoliao.jpg'),
(4,"康师傅矿泉水",22.3,'很好吃的面','../assets/aoliao.jpg'),
(5,"康师傅套",26.4,'很好吃的面','../assets/aoliao.jpg');

CREATE TABLE vs_cart(#购物车产品表
  carid INT PRIMARY KEY AUTO_INCREMENT,
  userId INT
);
INSERT INTO vs_cart VALUES( 1,  1 ); #插入carid和userId 1号用户和1号购物车
CREATE TABLE vs_cart_detail(  
  did INT PRIMARY KEY AUTO_INCREMENT,
  cartId INT ,
  productId INT ,
  count INT
);
INSERT INTO vs_cart_detail VALUES
(1, 100, 10, 3),
(2, 100, 15, 1),
(3, 100, 18, 2);
CREATE TABLE vs_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  rcvName VARCHAR(32),
  addr VARCHAR(128),
  payment INT,   #付款方式 1-货到付款  2-支付宝支付  3-京东支付  4-在线支付
  price FLOAT(10,2),
  orderTime BIGINT,
  status INT,  #订单状态 1-等待付款  2-派货中  3-运输中  4-订单完成  5-订单取消
  userId INT
);
INSERT INTO vs_order VALUES
(1000000000,'wo','万寿西街2号',1,1000,1471459354649,1,1),
(NULL,'wo','万寿西街2号',1,1000,1472459354649,2,1),
(NULL,'ma','万寿西街3号',2,1800,1473459354649,3,1),
(NULL,'ni','万寿西街4号',3,1600,1474459354649,4,1),
(NULL,'小强','万寿西街5号',4,1800,1475459354649,5,1),
(NULL,'老王','万寿西街7号',2,2100,1477459354649,2,1);

CREATE TABLE vs_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  orderId INT,    #订单编号
  productId INT,  #商品编号
  count INT       #购买数量
);
INSERT INTO vs_order_detail VALUES
(NULL, 1000000000, 1, 2),
(NULL, 1000000000, 2, 1),
(NULL, 1000000000, 3, 3),
(NULL, 1000000001, 4, 2),
(NULL, 1000000001, 5, 3),
(NULL, 1000000002, 6, 5),
(NULL, 1000000002, 7, 8),
(NULL, 1000000002, 8, 4),
(NULL, 1000000003, 9, 1),
(NULL, 1000000004, 10, 9),
(NULL, 1000000004, 11, 1),
(NULL, 1000000004, 12, 3),
(NULL, 1000000004, 13, 4),
(NULL, 1000000005, 14, 2),
(NULL, 1000000005, 15, 1);