<?php
	header("content-type:application/json;charset=utf-8");
	$conn=mysqli_connect(SAE_MYSQL_HOST_M,SAE_MYSQL_USER,SAE_MYSQL_PASS,SAE_MYSQL_DB,SAE_MYSQL_PORT);
    $sql="SET NAMES UTF8";
    mysqli_query($conn,$sql);
	@$uname=$_REQUEST['uname']or die('{"code":-1,"msg":"用户名不能为空"}');
	@$upwd=$_REQUEST['upwd']or die('{"code":-2,"msg":"密码不能为空"}');

	$sql="SELECT * FROM user WHERE uname='$uname'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	if($row==null){
		$sql="INSERT INTO user VALUES(null,'$uname','$upwd')";
		$result=mysqli_query($conn,$sql);
		if($result==true){
			echo '{"code":1,"msg":"注册成功，3s后自动跳转到登录页面"}';
		}
	}else{
		echo '{"code":-3,"msg":"注册失败，用户名已经存在"}';
	} 
?>