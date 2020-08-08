<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT Add-Doctor</title>
</head>


<body>
<% 
String drreg=request.getParameter("textfield");
String name=request.getParameter("textfield2");
String gender=request.getParameter("radio");
String age=request.getParameter("textfield3");
String address=request.getParameter("textfield4");
String phone=request.getParameter("textfield5");
String doj=request.getParameter("textfield6");
String desigtn=request.getParameter("textfield7");
String dpt=request.getParameter("textfield8");
String specs=request.getParameter("textfield9");


		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st = connection.createStatement();
 String query= "insert into dr_master(drid,name,gender,age,address,phone,doj,desigtn,dpt,specs) values('"+drreg+"','"+name+"','"+gender+"','"+age+"','"+address+"','"+phone+"','"+doj+"','"+desigtn+"','"+dpt+"','"+specs+"')";


if(st.executeUpdate(query) > 0 )
{
out.println("<html><body><script>alert('Doctor Added Successfully');window.location='w3adminmenu.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");

}
else
{
out.println("<html><body><script>alert('Error Inserting Data!!');</script></body></html>");
}

//response.sendRedirect("w3adminmenu.jsp");
%>


</body>
</html>
