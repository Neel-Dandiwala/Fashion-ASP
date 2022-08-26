<%@language="Vbscript"%>
<%
	dim lbl_user_name
	lbl_user_name = Session("user")

Dim email,gender,message,selection
Dim dateval,timeval
	dateval=Date()
	timeval=Time()

	email=Request.Form("email")
	message=Request.Form("message")
	selection=Request.Form("gender")

	if selection="male" Then
		gender="Male"

		elseif selection="female" Then
			gender="Female"

		elseif selection="other" Then
			gender="Other"
	end if

	Dim conn,rs,sql,cmd
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.Open"C:/inetpub/wwwroot/MP/Database2.mdb"
	sql="insert into Table1 values('"&gender&"','"&email&"','"&message&"','"&dateval&"','"&timeval&"')" 
	set cmd=Server.CreateObject("ADODB.Command")
	cmd.ActiveConnection=conn
	cmd.CommandText=sql
	set rs=cmd.Execute
	conn.close
	Set conn=nothing
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title> Feedback Successful </title>
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
h3{

	text-align: center;
	color:#04cde0;
	font-size:40px;
	padding-top: 50px;
	 background: -webkit-linear-gradient(right, #132e47,#04d0e4);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
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
		<h3>THANK YOU FOR THE FEEDBACK!</h3>
		<hr>
		<h5>IMPORTANT UPDATE</h5>
		<p>Dear Customer,<br>

		Trapped is open and you can take advantage of the FREE SHIPPING and RETURNS UP TO 60 DAYS an all orders.<br>

		Due to the current situation, the shipment of all orders will be delayed. We apologise for the inconvenience.<br>
		</p>
		<hr>
		<h1>T R A P <font>P E D</font></h1>
		<p>Powered by HOOT NET-A-PORTER GROUP Copyright © 2000-2020 HOOT NET-A-PORTER GROUP S.p.A. - All Rights Reserved</p>

		
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</body>