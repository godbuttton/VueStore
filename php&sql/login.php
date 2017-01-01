<?php
header('Content-Type: text/plain');
@$uname = $_REQUEST['uname'] or die('uname-required');
@$upwd = $_REQUEST['upwd'] or die('upwd-required');
@$callback= $_REQUEST['callback'] or die('callback is require');
$conn = mysqli_connect('127.0.0.1','root','','vuestore');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);
$sql = "SELECT uid FROM vs_user WHERE uname='$uname' AND upwd='$upwd'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_row($result);
$ok="ok";
$err="err";
if($row===null){//查询结果集中没有一行记录
	echo  $callback.'('.json_encode($err).')'; //接口
}else {	
		echo  $callback.'('.json_encode($ok).')'; //接口
}