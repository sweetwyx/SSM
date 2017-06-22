<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.rotate.min.js"></script>
	<script src="js/modernizr.js"></script>
	<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
	<script type="text/javascript">
$(document).ready(function(){
$("#img2").rotate({ 
   bind: 
     { 
        mouseover : function() { 
            $(this).rotate({animateTo:180});
        },
        mouseout : function() { 
            $(this).rotate({animateTo:0});
        }
     } 
   
});


var angle = 0;
setInterval(function(){
      angle+=3;
     $("#img3").rotate(angle);
},5);


var rotation = function (){
   $("#img4").rotate({
      angle:0, 
      animateTo:360, 
      callback: rotation
   });
}
rotation();



var rotation2 = function (){
   $("#img5").rotate({
      angle:0, 
      animateTo:360, 
      callback: rotation2,
      easing: function (x,t,b,c,d){        // t: current time, b: begInnIng value, c: change In value, d: duration
          return c*(t/d)+b;
      }
   });
}
rotation2();


$("#img6").rotate({ 
   bind: 
     { 
        click: function(){
            $(this).rotate({ angle:0,animateTo:180,easing: $.easing.easeInOutExpo })
        }
     } 
   
});


var value2 = 0
$("#img7").rotate({ 
   bind: 
     { 
        click: function(){
            value2 +=90;
            $(this).rotate({ animateTo:value2})
        }
     } 
   
});
$("#img1").click(function(){

    $("#img2").fadeToggle();
    $("#img7").fadeToggle();
    
  

  });
$("#img2").click(function(){
    $("#img3").fadeToggle();
    $("#img1").fadeToggle();
  
  });
 $("#img3").click(function(){
    $("#img4").fadeToggle();
    $("#img2").fadeToggle();
  

  });
  $("#img4").click(function(){
    $("#img5").fadeToggle();
    $("#img3").fadeToggle();
  
  });
   $("#img5").click(function(){
    $("#img6").fadeToggle();
    $("#img4").fadeToggle();
  
  });
   $("#img6").click(function(){
    $("#img7").fadeToggle();
    $("#img5").fadeToggle();
  });
  $("#img7").click(function(){
    $("#img1").fadeToggle();
    $("#img6").fadeToggle();
    
  });
 setInterval(function() {
 	 var value3=0;
 if($("#img1").css("display")=="none" ){
value3++;
}
if($("#img2").css("display")=="none" ){
value3++;
}if($("#img3").css("display")=="none" ){
value3++;
}if($("#img4").css("display")=="none" ){
value3++;
}if($("#img5").css("display")=="none" ){
value3++;
}if($("#img6").css("display")=="none" ){
value3++;
}if($("#img7").css("display")=="none" ){
value3++;
}
if(value3==6){
//
value3=-2;
 $("#bang1").animate({
      height:'100%',
      width:'100%'
    });
    $("#bang2").delay("slow").animate({
      height:'100%',
      width:'100%'
    });
    $("#bang3").delay("slow").animate({
      height:'100%',
      width:'100%'
    });
    $("#win").delay(2000).show();
  
setTimeout("location.reload()",6000);
   // alert("恭喜完成！You Win!");
}
 });
  

});

</script>
<script>
function loginShow(){
	
	document.getElementById("loginform").setAttribute("style", "width:700;height: 1000;position:absolute;left:45%;top:40%;display: inline;");
}
</script>

  </head>
  
  <body background="pics/bakg.jpg" >
  
  <embed src="bgm/Higher.mp3" hidden=true autoplay=true loop=true></embed>

 <div style="position: fixed;right: 2%;top: 2%;width: 10%;">
 <font color="white" size="5">
<button onclick="loginShow()">登录</button>
 &nbsp;
 注册
  &nbsp;
  问题反馈
 </font>
 
 </div>
   <div class="form-container" style="position:absolute;left: 40%;">
		<font color=white><h1>Welcome to My Website</h1></font>
		</div> 
	
	
		<div style="position: absolute;bottom: 10%;left:7%;" id="div1">
		<font color=white><h2>你能把下面7个球消灭到一个吗？</h2></font>
<img id="img1" src="pics/chrome.png" width="200" height="200" />
<img id="img2" src="pics/chrome.png" width="200" height="200" />
<img id="img3" src="pics/chrome.png" width="200" height="200"/>
<img id="img4" src="pics/chrome.png" width="200" height="200"/>
<img id="img5" src="pics/chrome.png" width="200" height="200"/>
<img id="img6" src="pics/chrome.png" width="200" height="200"/>
<img id="img7" src="pics/chrome.png" width="200" height="200"/>
<br>
<button style="border-radius: 10%" id="bt1"><img alt="" src="pics/submit.jpg" width="200" height="150" style="display: none;"></button>
  </div>
  
  <div style="position: absolute;right: 1%;bottom: 1%;">
  <font color="white">Powered by LaoWang What Makes Us Unique</font>
  </div>
<div  style="position: absolute;width: 40%;height: 30%;bottom: 30%;left:7%;" >
<img alt="" src="pics/bang.png"  id="bang1"  height="0%" width="0%">
</div>
<div  style="position: absolute;width: 20%;height: 30%;bottom: 40%;left:10%;" >
<img alt="" src="pics/boom.png"  id="bang2"  height="0%" width="0%">
</div>
<div  style="position: absolute;width: 20%;height: 30%;bottom: 6%;left:50%;" >
<img alt="" src="pics/oh.png"  id="bang3"  height="0%" width="0%">
</div>
<div style="position: absolute;width: 20%;height: 30%;bottom: 50%;left:45%;display:none;" id="win">
<font color="white" size="10"  style="font-family: fantasy;height: 0px;width: 0px;">你赢了！<br>You Win!</font>
</div>
<div style="width:700;height: 1000;position:absolute;left:45%;top:40%;display: none;"  id="loginform">
<form action="loginU" method="post">
<font color="white" >用户名：<input type="text" name="username" placeholder="What is your name?" required />
<br>&nbsp;&nbsp;密码：<input type="password" name="password" required placeholder="What is your password?" />
<br><input type="submit" value="登录" class="btn"/ width="300">


</font>

</form>
</div>

  </body>
</html>
