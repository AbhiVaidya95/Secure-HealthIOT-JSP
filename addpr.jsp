<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT -Add Patient</title>
</head>


<body>
<% 
String patientid=request.getParameter("textfield");
String name=request.getParameter("textfield2");
String gender=request.getParameter("radio");
String age=request.getParameter("textfield3");
String address=request.getParameter("textfield4");
String phone=request.getParameter("textfield5");


		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st = connection.createStatement();
 String query= "insert into pt_master(pid,name,age,address,phone,gender) values('"+patientid+"','"+name+"','"+age+"','"+address+"','"+phone+"','"+gender+"')";


if(st.executeUpdate(query) > 0 )
{
out.println("<html><body><script>alert('Patient Added Successfully');window.location='w3adminmenu.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");

}
else
{
out.println("<html><body><script>alert('Error Inserting Data!!');window.location='w3adminmenu.jsp';</script></body></html>");
}

//response.sendRedirect("w3adminmenu.jsp");
%>


</body>
</html>
