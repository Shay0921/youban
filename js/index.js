//页面滚动效果
$(function(){
	$("#interest ul li").addClass("wow slideInUp");
	$("#freedom ul li").addClass("wow zoomIn");
	$("#top_banner a.lf").addClass("wow slideInLeft");
	$("#top_banner a.rt").addClass("wow slideInRight");
	new WOW().init();
});
/*********轮播图上面搜索框************/
+function(){
	var search=document.querySelector("#search_box .search");
	var input=search.querySelector("input");
	var citySelect=document.getElementById("city_select");
	input.onfocus=function(){
		citySelect.className="";
	};
	input.onblur=function(){
		citySelect.className="hide";
	}
}();
+function(){
	var lis=document.querySelectorAll("#search_box>ul>li");
	var libs=document.querySelectorAll("#search_box>ul>li b");
	var divs=document.querySelectorAll("#search_box>div>div");
	for(var i=0;i<lis.length;i++){
		lis[i].onclick=toggle;
	}
	function toggle(){
		for(var i=0;i<lis.length;i++){
			divs[i].style.display="none";
			libs[i].style.background="";
		}
		for(var i=0;i<lis.length;i++){
			if(lis[i]==this) break;
		}
		divs[i].style.display="block";
		switch(i){
			case 0:
				libs[i].style.backgroundPosition="0 0";
				break;
			case 1:
				libs[i].style.backgroundPosition="0 -85px";
				break;
			case 2:
				libs[i].style.backgroundPosition="0 -173px";
				break;
			case 3:
				libs[i].style.backgroundPosition="0 -259px";
				break;
		}
	}
}();
+function(){
	$("#search_box>div>div").children("input").focus(function(){
		$(this).parent().css("boxShadow","0 0 5px #2acd7d");
	}).blur(function(){
		$(this).parent().css("boxShadow","");		
	});
}();
/************************顶部轮播图****************************/
+function(){
	var $ul=$("#carousel_images");
	var $lis=$("#carousel_images>li");
	var $first=$lis.slice(0,1);
	var $last=$lis.slice(4,5);
	var LIWIDTH=parseFloat($lis.css("width"));
	$ul.append($first.clone());
	$ul.prepend($last.clone());
	var li_width = $("#carousel_images li").css("width");
	$ul.css("left",-li_width);
	var n=1;var WAIT=3000;var SPEED=500;
	$ul.css("width",LIWIDTH*($lis.length+2));
	console.log($lis.length);
	console.log($ul.length);
	var timer = null;
	var canmove = true;
	function move(){	
		if(canmove){
			timer=setTimeout(function(){
				n++;
				canmove = false;
				$ul.animate({
					left:-n*LIWIDTH
				},SPEED,function(){
					if(n==$lis.length+1){
						n=1;
						$ul.css("left",LIWIDTH*-n);
					}
					canmove = true;
				  if(canmove)	move();
			  });
		  },WAIT);
		}
		//$("#top_carousel").mouseover(function(){
			//$ul.stop(true);
				//clearTimeout(timer);timer=null;		canMove=false;
		//}).mouseout(function(){//鼠标离开,重启自动轮播
			////修改标记允许继续自动轮播
			//console.log(n);
			//n--;//让n退回前一个下标
			//canMove=true; move();
		//});
	}
	/*轮播-右箭头*/
	$("#top_carousel .next a").click(function(e){
		e.preventDefault();
		if(canmove){
				var $width=parseFloat($ul.css("left"));
				//$ul.stop(true);
				clearTimeout(timer);timer=null;
				canmove = false;
				$ul.animate({
					left:$width-LIWIDTH
					},SPEED,function(){
						n++;
						if(n>=$lis.length){
							n=0;
							$ul.css("left",0);
						}
						canmove = true;
						if(timer==null){ 
							if(canmove) move();
						}
				});		
		}
	});
		///*轮播-左箭头 未完成*/
		$("#top_carousel .previous a").click(function(e){
			e.preventDefault();
			if(canmove){
				var $width=parseFloat($ul.css("left"));
				//$ul.stop(true);
				clearTimeout(timer);timer=null;		
				canmove = false;
				$ul.animate({
					left:$width+LIWIDTH
					},SPEED,function(){
						n--;
						if(n <= 0){
							n = 5;
							$ul.css("left",-n*LIWIDTH);
						}
						canmove = true;
						if(timer==null){ 
							if(canmove) move();
						}
				});
			}
		});
	move();
}();
/*日历*/
$("input[name='in-date']").datepicker({dateFormat:"yy-mm-dd"});
$("input[name='out-date']").datepicker({dateFormat:"yy-mm-dd"});
/*下拉菜单(顶部nav-社区栏)*/
 +function(){
	$('.luntan').hover(
    function(){
      $(this).children('#hot_box_box').slideDown(200);
    },
    function(){
       $(this).children('#hot_box_box').slideUp(200);
    }
	 );
 }();
/*最世界自由行*/
+function(){
	var $uls=$("#freedom ul");
	$(".slider_control a").mouseover(function(){
		$(this).addClass("current").siblings().removeClass("current");
		var n=$(".slider_control a.current").index(".slider_control a");
		//console.log($("#freedom ul:eq("+n+")"))
		$("#freedom ul:eq("+n+")").fadeIn(500).siblings().fadeOut(500);
		//$("#freedom ul:eq("+n+")").addClass("wow fadeIn")
	})
}();
////热门游记分页用数据库实现
page(1);
function page(pageNum){
	$.ajax({
		type:'POST',
		url:'data/qynote.php',
		data:{pageNum:pageNum},
		success:function(data){
			var html='';
			$.each(data,function(i,obj){
				html+=`
					<li class="wow fadeIn">
						<a href=""><img src="images/index/note/${obj.img}" alt="" /></a>
						<div class="text">
							<a href="" class="comment"><b></b>${obj.comment}</a>
							<a href="" class="userAvatar"><img src="images/index/userAvatar/${obj.userAvatar}" alt="" /></a>
							<p class="userName">${obj.userName}</p>
							<h3><a href="">${obj.detail}</a></h3>
						</div>
					</li>
				`;
			});
			$("#travel_note ul.list").html(html);
		}
	});
}
$("#travel_note .slider_control").on("mouseenter","a",function(e){
	e.preventDefault();
	var a=$(this);
	var index=$("#travel_note .slider_control a").index(a);
	a.addClass("current").siblings().removeClass("current");
	page(index+1);
});
