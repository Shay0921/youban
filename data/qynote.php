<?php
   header("content-type:application/json;charset=utf-8");
   $conn=mysqli_connect(SAE_MYSQL_HOST_M,SAE_MYSQL_USER,SAE_MYSQL_PASS,SAE_MYSQL_DB,SAE_MYSQL_PORT);
   $sql="SET NAMES UTF8";
   mysqli_query($conn,$sql);
   $pageNum=$_REQUEST['pageNum'];
   if(empty($pageNum)){
      $pageNum=1;
   }
   $pageStart=($pageNum-1)*8;
   $sql="SELECT * FROM note LIMIT $pageStart,8";
   $result=mysqli_query($conn,$sql);
   $arr=mysqli_fetch_all($result,MYSQLI_ASSOC);
   echo json_encode($arr);
?>