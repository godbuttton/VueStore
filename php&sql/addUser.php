<?php
header("Content-type:application/json;charset=UTF-8");
@$uname= $_REQUEST['uname'] or die('{"msg":"uname required"}');
@$upwd= $_REQUEST['uname'] or die('{"msg":"passWord required"}');
$conn = mysqli_connect('127.0.0.1','root','','vuestore');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);
$sql = "SELECT uid FROM vs_user WHERE uname='$uname'";
$result = mysqli_query($conn,$sql);
var_dump($result) ;
if ($result->num_rows<1) {  //成功则返回可以插入
	$sql = "INSERT INTO vs_user VALUES(NULL,'$uname','$upwd');";
	$result = mysqli_query($conn,$sql);
	echo "sucess";
}else{     //失败 则返回已经存在
	echo "exist";
}