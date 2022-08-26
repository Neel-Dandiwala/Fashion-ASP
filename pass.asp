<%@language="VBScript"%>
<%
Function Login()
	fname=Request.Form("fname")
	lname=Request.Form("lname")
	age=Request.Form("age")
	uname=Request.Form("uname")
	password=Request.Form("password")
	getSub=Request.Form("Submit")

	if getSub="Accept" then
		if fname="" then
			MsgBox("Please provide your First Name")
		elseif lname="" then
			MsgBox("Please provide your Last Name")
		elseif age="" then
			MsgBox("Please provide your Age")
		elseif uname="" then
			MsgBox("Please provide your Username")
		elseif password="" then
			MsgBox("Please provide your Password")
		else
			MsgBox("You have been successfully accepted!")
		end if
	end if
End Function
%>