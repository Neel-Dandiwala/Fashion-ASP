<%@language="vbscript"%>
<%
	dim lbl_user_name
	lbl_user_name = Session("user")
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title> MiniP2 </title>
<script type="text/javascript">
</script>
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
body{
	background-color: #e2dfd7;
}
.cover{
	width:100%;
	height:720px;
	display:flex;
	align-items:center;
	justify-content:center;
	background-color:#000;
	
}
.container{
	display:flex;
	justify-content: center;
	flex-wrap: wrap;
	margin-top: 60px;
	padding-bottom: 125px;
}
.image{
	margin-left: 70px;
	margin-right: 70px;
	position:relative;
	overflow:hidden;
}
.add-cart{
	position: absolute;
	width: 100%;
	background-color: #202020;
	transition:all 0.3s ease-in-out;
	opacity:40;
	cursor:pointer;
	color:#04d0e4
}
h3{
	text-align:center;
	color:#202020;
}

.image:hover .cart1,
.image:hover .cart2,
.image:hover .cart3,
.image:hover .cart4{
	bottom:140px;
	opacity:1;
	padding: 10px;
	text-decoration: none;
}
h1{
	text-align: center;
	font-weight: bolder;
	color:#132e47;
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
h5{
	text-align: center;
	font-size:40px;
}
p{
	text-align: center;
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
			<a href="try.asp#feedback" class="button">Feedback</a>

		</div>
		</div>
		<hr>
		<div class="cover">
			<video height="720" autoplay muted>
  			<source src="prada.mp4" type="video/mp4">
			Your browser does not support the video tag.
			</video>
		</div>
		<form action="cart.asp" method="POST" name="form">
		
		<div class="container">
			<div class="image">
				<img src="armanimen.png" alt="men1">
				<h1>A R M A N I</h1>
				<h3>Slim-fit stretch virgin wool suit</h3>
				<h3>₹1,05,903</h3>
				<input type="radio" class="add-cart cart1" value="ARMANI" name="selected" />
			</div>
			<div class="image">
				<img src="pradamen.png" alt="men2">
				<h1>P R A D A</h1>
				<h3>Double-breasted wool coat</h3>
				<h3>₹3,00,310</h3>
				<input type="radio" class="add-cart cart2" value="PRADA" name="selected" />

			</div>
			<div class="image">
				<img src="balmainmen.png" alt="men3">
				<h1>B A L M A I N</h1>
				<h3>Hooded black cashmere coat</h3>
				<h3>₹2,00,459</h3>
				<input type="radio" class="add-cart cart3" value="BALMAIN" name="selected" />

			</div>
			<div class="image">
				<img src="diormen.png" alt="men4">
				<h1>D I O R</h1>
				<h3>Charcoal gray oblique silk suit</h3>
				<h3>₹1,73,983</h3>
				<input type="radio" class="add-cart cart4" value="DIOR" name="selected" />
			</div>
		</div>
		<input type="submit" class="Field2" runat="Server" value="View Cart" name="view" Onclick="Submit" />
		</form>
		<br><br>
<hr>
<br>
<p>Due to the current situation, the shipment of all orders will be delayed. We apologise for the inconvenience.</p><br>
<hr>
<h1>T R A P <font>P E D</font></h1>
		<p>Powered by HOOT NET-A-PORTER GROUP Copyright © 2000-2020 HOOT NET-A-PORTER GROUP S.p.A. - All Rights Reserved</p>


<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</body>
</html>
