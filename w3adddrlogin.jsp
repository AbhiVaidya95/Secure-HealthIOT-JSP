<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT</title>
</head>


<body>
<% 
String username=request.getParameter("textfield1");
String pwd=request.getParameter("textfield2");
String dr1=(String)session.getAttribute("doctorid");

		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st = connection.createStatement();
 String query= "insert into doctorlogin(drid,usrname,passwd) values('"+dr1+"','"+username+"','"+pwd+"')";


if(st.executeUpdate(query) > 0 )
{
session.setAttribute("doctorname",username);
out.println("<html><body><script>alert('Username Password Created Successfully');window.location='w3doctorhome.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");

}
else
{
out.println("<html><body><script>alert('Error Creating Username and Password!!');</script></body></html>");
}

//response.sendRedirect("w3adminmenu.jsp");
%>


</body>
</html>
