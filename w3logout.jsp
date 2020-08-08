<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Secure Health IOT -Logout</title>
</head>
<body>
<% session.invalidate();
out.println("<html><body><script>alert('Logout Sucessfully!!');window.location='w3index.jsp';</script></body></html>");

 %>

</body>
</html>