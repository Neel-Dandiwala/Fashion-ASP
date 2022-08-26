<% @language="VBSCRIPT" %>
<%
	Dim conn,rs,sql
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.Open"C:/inetpub/wwwroot/MP/Database1.mdb"
	set rs = Server.CreateObject("ADODB.Recordset")
	rs.Open "Table1",conn,0,3,2
	do while not rs.EOF
		rs.Delete
		rs.MoveNext
	Loop
		conn.close
		Set conn=nothing
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title> Welcome to my miniproject </title>
<style type="text/css">
.form1 {
	width : 100%;
	height : 100%;
	display : flex;
	justify-content : center;
	align-items : center;
}
body { 	
		background-image:url("load2.gif");
		height: 100vh;
		background-color:#202020;
		background-size:cover;
}
.gif-container {
  background: url("load2.gif") center;
  background-size: cover;

  height: 100%;
}
.left{
	border:1px double #00A1F2;
	border-radius: 40px;
	font-size:14px;
	color: #FFFFFF;
	vertical-align:top;
	width:80px;
	padding-top:2px;
	padding-left:2px;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}
@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 11px #fff, 0 0 12px #04cde0, 0 0 13px #04cde0, 0 0 14px #04cde0, 0 0 15px #04cde0, 0 0 16px #04cde0;
  }
  to {
    text-shadow: 0 0 10px #fff, 0 0 11px #0c57a9, 0 0 12px #0c57a9, 0 0 13px #0c57a9, 0 0 14px #0c57a9, 0 0 15px #0c57a9, 0 0 16px #0c57a9;
  }
}

.Field{
	 border-radius: 15px 15px;
	border-color: #202020;
	color:#00CCFF;
	background-color:#090909;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

#RegDiv{
	color:red;
}
</style>
</head>
<body class="gif-container">
<form name="login" action="sure.asp" method="POST" class="form1" name="form" >
<table>
<tr><td align="center" class="left">What's Your Name: </td><td align="center" class="left"><input type="text" style="text-transform: capitalize;" class="Field" tabindex="1" name="fname" required="required"/></td></tr>
<tr><td align="center" class="left">Age: </td><td align="center" class="left"><input type="number" min="1" max="100" class="Field" tabindex="1" name="age" required="required"/></td></tr>
<tr align="center"><td colspan="5"><input type="submit" class="Field" value="Done!" name="Submit" /></td></tr>
</table>
</form>
<div id="RegDiv"></div>
</body>
</html>