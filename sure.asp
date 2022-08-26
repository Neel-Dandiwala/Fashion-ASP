<% @language="VBSCRIPT" %>
<% dim strname
	strname=Request.Form("fname")
	Session("user")= strname
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
  text-align: center;
}
@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 11px #fff, 0 0 12px #04cde0, 0 0 13px #04cde0, 0 0 14px #04cde0, 0 0 15px #04cde0, 0 0 16px #04cde0;
  }
  to {
    text-shadow: 0 0 10px #fff, 0 0 11px #0c57a9, 0 0 12px #0c57a9, 0 0 13px #0c57a9, 0 0 14px #0c57a9, 0 0 15px #0c57a9, 0 0 16px #0c57a9;
  }
}
h2{
		
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
<div class="form1">
<h2 align="center"> Hey <%=strname%>! Are you ready? </h2><br>
<div class="left">
<a class="Field" align="center" href="try.asp"> Let's Go! </a> 
</div><br><br>

<div class="left">
<a class="Field" align="center" href="1.asp"> Go Back! </a> 
</div>
</div>

<div id="RegDiv"></div>
</body>
</html>