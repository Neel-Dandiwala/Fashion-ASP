<%@language="vbscript"%>
<%
	dim lbl_user_name
	lbl_user_name = Session("user")
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title> HomePage </title>
<script type="text/javascript"></script>
<style type="text/css">

.box1{
	border: 1px solid black;
	background-color:whitesmoke;
	height:30px;
}
ul{	
	float:left;
	color:white;
}
ul li{
	margin-top:-10px;
	float:left;
	position:relative;
	left:300%;
	width:100px;
	font-size:14px;
	font-family: barlow condensed, sans-serif;
	list-style-type:none;
}
ul li a{
	text-decoration: none;
	color:black;
}
h4{
	
	color:black;
	margin:4px 12px;
	position:relative;
	left:-18%;
	font-family:barlow condensed, sans-serif;
	text-transform:uppercase;
	font-size:14px;
	font-weight:normal;
	display:inline-block;
}
.logout{
	
	
	color:black;
	margin:4px 12px;
	position:relative;
	left:68%;
	display:inline-block;
}
.subbox{
	border: 1px solid transparent;
	background-color:#101010;
	color:#fff;
	height:50px;
}
.ol{
	float:left;
}
.button{
	padding-top: 10px;
	float:left;
	width:90px;
	position:relative;
	left:60%;
	list-style-type:none;
	font-family:barlow condensed,sans-serif;
	font-size:18px;
	text-decoration:none;
	text-align: center;
	align-items: center;
	color:white;
	background: none!IMPORTANT;	
}
.button:hover{
	border-bottom:4px solid #132e47;
}
font{
	color:#04d0e4;
}
.cover{
	width:100%;
	height:530px;
	display:flex;
	align-items:center;
	justify-content:center;
	background-color:black;
	
}
.logos{
	display:flex;
	align-items:center;
	justify-content:center;
	border:none;
	padding-left:50px;
	padding-right: 50px;


}
h3{

	text-align: center;
	color:#04cde0;
	font-size:40px;
	padding-top: 50px;
	 background: -webkit-linear-gradient(right, #132e47,#04d0e4);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
h5{
	text-align: center;
	font-size:25px;
}
h1{
	text-align: center;
	font-size:40px;
}
p{
	text-align: center;
}
.gender{
	text-align: center;
}
.radioIcon {
    border-top-color: rgb(32, 32, 32);
    border-right-color: rgb(32, 32, 32);
    border-bottom-color: rgb(32, 32, 32);
    border-left-color: rgb(32, 32, 32);
}
g{
	color:#04cde0;
}
.Field{
	 border-radius: 15px 15px;
	border-color: #202020;
	color:#00CCFF;
	background-color:#090909;
	margin: auto;
  	display: block;
}
.Field2{
	 border-radius: 30px 30px;
	border-color: #202020;
	color:#132e47;
	background-color:transparent;
	padding: 15px 32px;
  	text-align: center;
  	margin: auto;
  	display: block;
}
#message{
	height:100px;
}
body{
	background-color: #e2dfd7;
}
</style>
</head>
<body>
		<div class="box1">
		<ul>
			<li><a href="">INR</a><i aria-hidden="true"></i></li>
			<li><a href="">English</a><i aria-hidden="true"></i></li>
			<li><a href=""><%=lbl_user_name%>&nbsp;<ion-icon name="person-outline"></ion-icon></a><i aria-hidden="true"></i></li>
		</ul>
		<h4> TRAP<font>PED</font></h4>
		<a class="logout" href="1.asp"><ion-icon name="power-outline"></ion-icon></a>
		</div>
		<div class="subbox">
		<div class="ol">
			
				
			<a href="try.asp" class="button">Home</a>
			<a href="men.asp" class="button">Men</a>
			<a href="women.asp" class="button">Women</a>
			<a href="#feedback" class="button">Feedback</a>

		</div>
		</div>
		<hr>
		<div class="cover">
		<img src="women.png" href="">
		<img src="men.png" href="men.asp">
		</div>
		<h3> OUR PARTNERS </h3>
		<div class="logos">
		<img src="balmain.png" height="300" width="300">
		<img src="gucci.png" height="300" width="300">
		<img src="dior.png" height="300" width="300">
		</div>
		<div class="logos">
		<img src="fendi.png" height="300" width="300">
		<img src="armani.png" height="300" width="300">
		<img src="versace.png" height="300" width="300">
		<img src="prada.png" height="300" width="300">		
		</div>
		<hr>
		<div id="feedback">
		<h5>IMPORTANT UPDATE</h5>
		<p>Dear Customer,<br>

		Trapped is open and you can take advantage of the FREE SHIPPING and RETURNS UP TO 60 DAYS an all orders.<br>

		Due to the current situation, the shipment of all orders will be delayed. We apologise for the inconvenience.<br><br>
		However, we would love to have your feedback!
		</p>
		<div class="gender"><form action="redirect.asp" method="POST">
		<g>Gender: </g><input type="radio" id="male" name="gender" value="male" class="radioIcon">
		<label for="male">Male</label>
		<input type="radio" id="female" name="gender" value="female" class="radioIcon">
		<label for="female">Female</label>
		<input type="radio" id="other" name="gender" value="other" class="radioIcon">
		<label for="other">Other</label><br>
		</div><br>
		<input type="email" class="Field" tabindex="1" name="email" align="center" value=" Email" size="50px" required="required" onfocus="this.value = this.value=='Email'?'':this.value;" onblur="this.value = this.value==''?'Email':this.value;"/><br><br>
		<input type="text" class="Field" tabindex="1" name="message" align="center" value="" id="message" size="50px" required="required" /><br><br>
		<input type="submit" class="Field2" value="S U B M I T" name="Submit" /></form><br><br>
		<hr></div>
		<h1>T R A P <font>P E D</font></h1>
		<p>Powered by HOOT NET-A-PORTER GROUP Copyright © 2000-2020 HOOT NET-A-PORTER GROUP S.p.A. - All Rights Reserved</p>

		
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</body>