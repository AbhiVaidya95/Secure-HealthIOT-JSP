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

String docid=request.getParameter("textfield1");
String username=request.getParameter("textfield2");
String passwd=request.getParameter("textfield3");



		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st1 = connection.createStatement();
		  Statement st2 = connection.createStatement();
  String query="select * from doctorlogin where drid='"+docid+"'";
  String query1="select * from dr_master where drid='"+docid+"'";

  ResultSet rs = st1.executeQuery(query);
  ResultSet rs1 = st2.executeQuery(query1);


if(rs.next()==true && rs1.next()==true)
{
//response.sendRedirect("w3adminmenu.jsp");
Statement st3 = connection.createStatement();
String query2="select * from doctorlogin where usrname='"+username+"' and passwd='"+passwd+"'";
 ResultSet rs3 = st3.executeQuery(query2);

 if(rs3.next()==true)
 {
session.setAttribute("doctorid",docid);
session.setAttribute("doctorname",username);
response.sendRedirect("w3doctorhome.jsp");
 } 

 else
 {
 out.println("<html><body><script>alert('Invalid Username and Password!!');window.location='w3doctorlogin.jsp';</script></body></html>");
 }


}

else if (rs1.next()==true)
{
session.setAttribute("doctorid",docid);
response.sendRedirect("w3doctoracc.jsp");

//out.println("Create Username and Password");

}

else
{
out.println("<html><body><script>alert('User Does Not Exits!!');window.location='w3patientlogin.jsp';</script></body></html>");
//response.sendRedirect("home.jsp");
}

%>


</body>
</html>
