<%@language="vbscript"%>
<%
	dim lbl_user_name
	lbl_user_name = Session("user")

	dim Productname
	dim Productbran
	dim Productprice
	Dim selected
	Dim flag1

	Dim conn,rs,sql
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.Open"C:/inetpub/wwwroot/MP/Database1.mdb"

	selected= Request.form("selected")

	if selected="ARMANI" Then
		Productname="Slim-fit stretch virgin wool suit"
		Productbrand="ARMANI"
		Productprice=105903

	elseif selected="PRADA" Then
		Productname="Double-breasted wool coat"
		Productbrand="PRADA"
		Productprice=300310

	elseif selected="BALMAIN" Then
		Productname="Hooded black cashmere coat"
		Productbrand="BALMAIN"
		Productprice=200459
	

	elseif selected="DIOR" Then
		Productname="Charcoal gray oblique silk suit"
		Productbrand="DIOR"
		Productprice=173983

	elseif selected="FENDI" Then
		Productname="Blue wool coat"
		Productbrand="FENDI"
		Productprice=271562

	elseif selected="GUCCI" Then
		Productname="Reversible GG wool poncho"
		Productbrand="GUCCI"
		Productprice=195368
	

	elseif selected="VERSACE" Then
		Productname="Dip-Dye trench coat"
		Productbrand="VERSACE"
		Productprice=283284

	else
		Productname=""
		Productbrand=""
		Productprice=""
		flag1 = 1
	end if

	If flag1 <> 1 Then
		sql="insert into Table1 values('"&Productbrand&"','"&Productname&"','"&Productprice&"','"&Now()&"')" 
		set cmd=Server.CreateObject("ADODB.Command")
		cmd.ActiveConnection=conn
		cmd.CommandText=sql
		set rs=cmd.Execute
	End If

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title> MiniP2 </title>
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
body{
	background-color: #e2dfd7;
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
.content-table{
	border-collapse: collapse;
	margin:25px 0;
	font-size:0.9em;
	min-width:400px;
	border-radius:5px 5px 0 0;
	overflow:hidden;
	box-shadow:0 0 20px rgba(0,0,0,0.15);
	align-items: center;
	text-align: center;
}
.content-table thead tr{
	background-color: #132e47;
	color:#fff;
	text-align:left;
	font-weight:bold;
	align-items: center;
	text-align: center;
}
.content-table th,
.content-table td{
	padding:12px 15px;
}
.content-table tbody tr{
	border-bottom:1px solid #ddd;
}
.content-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.content-table tbody tr.active-row{
	font-weight:bold;
	color:#04d0e4;
}
.content-table tbody tr:last-of-type{
	border-bottom:2px solid #04d0e4;
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
.Field3{
	 border-radius: 30px 30px;
	border-color: #202020;
	color:#04d0e4;
	background-color:#202020;
	padding: 15px 32px;
  	text-align: center;
  	margin: auto;
  	display: block;
}
h1{
	text-align: center;
	font-size:40px;
}
p{
	text-align: center;
}
#hp-ctn-howItWorks img
{
    margin: 15px 0px 0px 13px;
}

#hp-ctn-howItWorks p
{
    color: #fff;
    -moz-transform:rotate(-90deg);
    -ms-transform:rotate(-90deg);
    -o-transform:rotate(-90deg);
    -webkit-transform:rotate(-90deg);
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
	<table class="content-table" width="100%">
		<col style="width:10%">
		<col style="width:35%">
		<col style="width:10%">
		<col style="width:10%">
		<col style="width:35%">
	<thead>
	<tr>
		<th>BRAND</th>
		<th>PRODUCT</th>
		<th>PRICE</th>
	</tr>
	</thead>
	<tbody>
	<%
		dim con2,rs2,sql2,cmd2, sum
		sum = 0
		set con2=Server.CreateObject("ADODB.Connection")
		con2.Provider="Microsoft.Jet.OLEDB.4.0"
		con2.Open"C:/inetpub/wwwroot/MP/Database1.mdb"
		sql2="Select * from Table1"
		set cmd2=Server.CreateObject("ADODB.Command")
		cmd2.ActiveConnection=con2
		cmd2.CommandText=sql2
		set rs2=cmd2.Execute
		do while not rs2.EOF
			Response.Write("<tr><td>"&rs2("Productbrand")&"</td>")
			Response.Write("<td>"&rs2("Productname")&"</td>")
			Response.Write("<td>"&rs2("Productprice")&"</td>")
			sum = sum + rs2("Productprice")
			rs2.MoveNext
		Loop
		con2.close
		Set con2=nothing
	%>
	</tr>
	<tr>
		<td colspan="2">G R A N D - T O T A L</td>
		<td colspan="1"><%=sum%></td>
	</tr>
</tbody>
</table>
<div id="hp-ctn-howItWorks">
<form method="POST" action="delete.asp">
<input type="submit" class="Field2" value="C L E A R   C A R T" name="Delete" />
</form>
</div>
<form method="POST" action="men.asp">
<input type="submit" class="Field2" value="A D D   M O R E   I T E M S   F R O M   M E N ' S   C O L L E C T I O N" name="Add" />
</form>
<form method="POST" action="women.asp">
<input type="submit" class="Field2" value="A D D   M O R E   I T E M S   F R O M   W O M E N ' S   C O L L E C T I O N" name="Add" />
</form>
<br>
<form method="POST" action="thanks.asp">
<input type="submit" class="Field3" value="P R O C E E D   T O   P A Y M E N T" name="Pay" />
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



