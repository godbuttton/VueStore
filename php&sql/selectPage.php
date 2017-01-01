<?php
header("Content-Type:application/json");
//header("Access-Control-Allow-Origin:http://localhost:8080");
@$start = $_REQUEST['start'];
@$callback = $_REQUEST['callback'];
if(empty($start))
{
    $start = 0;
}
$count = 5;

$conn = mysqli_connect('127.0.0.1','root','','vuestore');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);
$sql = "SELECT * FROM vs_product LIMIT $start,$count";
$result = mysqli_query($conn,$sql);
$output = [];
while(true)
{
    $row = mysqli_fetch_assoc($result);
    if(!$row)
    {
        break;
    }
    $output[] = $row;
}
echo  $callback.'('.json_encode($output).')'; //接口
?>