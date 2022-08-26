<%@language="Vbscript"%>
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
<title> Payment Successful </title>
<script type="text/javascript">
</script>
<style type="text/css">
body{
	background-color: #e2dfd7;
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
h1{
	text-align: center;
	font-weight: bolder;
	color:#132e47;
}
</style>
<body>
<h1>Your all selections are removed</h1>
<form action="cart.asp" method="POST">
<input type="submit" class="Field2" value="B A C K   T O   C A R T" />
</form>
</body>
</head>