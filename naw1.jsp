<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT - Admin Login</title>
</head>


<body>
<% 

String str=request.getParameter("textfield1");
String str1=request.getParameter("textfield2");



		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement statement = connection.createStatement();
  String query="select * from admin where user='"+str+"' and pass='"+str1+"'";
  ResultSet x = statement.executeQuery(query);



if(x.next()==true)
{
session.setAttribute("adminname",str);
response.sendRedirect("w3adminmenu.jsp");
}
else
{
out.println("<html><body><script>alert('User Does Not Exits!!');window.location='w3adminlogin.jsp';</script></body></html>");

//response.sendRedirect("home.jsp");
}

%>


</body>
</html>
