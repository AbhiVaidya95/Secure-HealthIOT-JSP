<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT - Add General Information</title>
</head>


<body>
<% 
String patientid=(String)session.getAttribute("patientid");
float weight=Float.parseFloat(request.getParameter("numfield1"));
float height=Float.parseFloat(request.getParameter("numfield2"));
float bmi=Float.parseFloat(request.getParameter("numfield5"));
//int  pulse=Integer.parseInt(request.getParameter("numfield3"));
//int bloodpre=Integer.parseInt(request.getParameter("numfield4"));
String bloodgrp=request.getParameter("option");
	Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");

try{

	
		  Statement st = connection.createStatement();
 String query= "insert into pt_gr(pid,weight,height,bg,bmi) values('"+patientid+"',"+weight+","+height+",'"+bloodgrp+"',"+bmi+")";


if(st.executeUpdate(query) > 0 )
{
out.println("<html><body><script>alert('Record Inserted Successfully');window.location='w3patienthome.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");
}
else
{
out.println("<html><body><script>alert('Error Inserting Record!!');window.location='w3patienthome.jsp';</script></body></html>");
}
}
catch(SQLException e)
{
//out.println("An sql exception occurred:" + e.getMessage());
try
{
 Statement st1 = connection.createStatement();
 String query1= "update pt_gr set weight="+weight+",height="+height+",bg='"+bloodgrp+"',bmi="+bmi+" where pid='"+patientid+"'";

if(st1.executeUpdate(query1) > 0 )
{
out.println("<html><body><script>alert('Record Updated Successfully!!');window.location='w3patienthome.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");
}
else
{
out.println("<html><body><script>alert('Error Updating Record!!');window.location='w3error.jsp';</script></body></html>");
}
}
catch(Exception e1)
{
out.println("<html><body><script>alert('Error Updating Record!!');window.location='w3error.jsp?error="+e1.getMessage()+"';</script></body></html>");
//out.println("An exception occurred:" + e.getMessage());
//href="xp.jsp?lol=hahah"
}
}


catch(Exception e)
{
out.println("<html><body><script>alert('Error Updating Record!!');window.location='w3error.jsp?error="+e.getMessage()+"';</script></body></html>");
//out.println("An exception occurred:" + e.getMessage());
//href="xp.jsp?lol=hahah"
}
//response.sendRedirect("w3adminmenu.jsp");
%>


</body>
</html>
