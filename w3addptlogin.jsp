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
if(session.getAttribute("patientid")==null){
response.sendRedirect("w3index.jsp");

}
%>
<% 
String username=request.getParameter("textfield1");
String pwd=request.getParameter("textfield2");
String pt1=(String)session.getAttribute("patientid");

		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st = connection.createStatement();
 String query= "insert into patientlogin(pid,usrname,passwd) values('"+pt1+"','"+username+"','"+pwd+"')";


if(st.executeUpdate(query) > 0 )
{
session.setAttribute("patientname",username);
out.println("<html><body><script>alert('Username Password Created Successfully');window.location='w3patienthome.jsp';</script></body></html>");
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
