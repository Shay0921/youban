var reg = new RegExp(/^\s*$/);
$("input:lt(2)").blur(function(){
	if(reg.test($(this).val())){
		$(this).next().css("opacity","1");
	}else{
		$(this).next().css("opacity","0");
	}
});
$("#btn").click(function(){
	var n=$("#uname").val();
	var p=$("#upwd").val();
	var e=$("#uemail").val();
	$.ajax({
		type:'POST',
		url:"data/register.php",
		data:{uname:n,upwd:p},
		success:function(data){
			alert(data.msg);
			console.log(data);
			if(data.code>0){
				setTimeout(function(){
					location.href="qy_index.html";
				},3000);

			}
		},
		error:function(err){
			console.log(err);
		}
	});
});