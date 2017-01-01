<?php
/***
*根据客户端提交的用户名，查询出该用户所有的订单，
*返回的数据形如：[ {oid:xx, rcvName:xx, addr:xx ... userId:xx, productList:[{},{}] },   {},{}  ]
*/
header('Content-Type: application/json;charset=UTF-8');
@$uname= $_REQUEST['uname'] or die('{"msg":"uname required"}');
$conn = mysqli_connect('127.0.0.1','root','','vuestore');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);

//SQL1：根据用户名查询用户编号
$sql = "SELECT uid FROM vs_user WHERE uname='$uname'";
$result = mysqli_query($conn,$sql);
$userId = mysqli_fetch_assoc($result)['uid'];

//SQL2：根据用户编号查询所有的订单，缺少产品列表
$sql = "SELECT * FROM vs_order WHERE userId='$userId'";
$result = mysqli_query($conn,$sql);
$orderList = mysqli_fetch_all($result,MYSQLI_ASSOC);

foreach($orderList as $i=>$order){
  $oid = $order['oid']; //订单编号
  //SQL3:根据订单编号查询出该订单中所有的产品信息
  $sql = "SELECT * FROM vs_product WHERE pid IN (SELECT productId FROM vs_order_detail WHERE orderId='$oid')";
  $result = mysqli_query($conn,$sql);
  $productList = mysqli_fetch_all($result,MYSQLI_ASSOC);
  //修改$order中的数据无法影响到原始的$orderList中的数据
  $orderList[$i]['productList'] = $productList;
}
echo json_encode($orderList);