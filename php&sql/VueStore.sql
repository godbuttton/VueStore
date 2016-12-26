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
