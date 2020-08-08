<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.io.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT -Add Patient</title>
</head>


<body>
<% 
int flag=0;
String docid=(String)session.getAttribute("doctorid");
String pid=(String)request.getParameter("textfield1");
/*
String name=request.getParameter("textfield2");
String gender=request.getParameter("radio");
String age=request.getParameter("textfield3");
String address=request.getParameter("textfield4");
String phone=request.getParameter("textfield5");
*/
ArrayList<String> pats =new ArrayList<String>(Arrays.asList(pid.split(",")));
//out.println(""+pid);
//out.println(""+doctorid);


		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement st = connection.createStatement();




 for(String pids:pats)
{

 String query= "insert into doctorpatmain(docid,pid) values('"+docid+"','"+pids+"')";
 if(st.executeUpdate(query) > 0 )
{
//out.println("<html><body><script>alert('Doctor Selected Successfully');</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");
flag=0;
String delquery="delete from patientdoctemp where pid='"+pids+"'";
if(st.executeUpdate(delquery) > 0 )
{
flag=0;
}
else{
flag=1;
}

}
else
{
flag=1;
out.println("<html><body><script>alert('Error Inserting Data!!');</script></body></html>");
}
}
/*
if(st.executeUpdate(query) > 0 )
{
out.println("<html><body><script>alert('Doctor Selected Successfully');window.location='w3adminmenu.jsp';</script></body></html>");
//response.sendRedirect("w3adminmenu.jsp");

}
else
{
out.println("<html><body><script>alert('Error Inserting Data!!');window.location='w3adminmenu.jsp';</script></body></html>");
}
*/
//response.sendRedirect("w3adminmenu.jsp");
if(flag==0)
{
out.println("<html><body><script>alert('Patient Selected Successfully');window.location='w3doctorhome.jsp';</script></body></html>");
}
else
{
out.println("window.location='w3doctorhome.jsp';</script></body></html>");

}
%>


</body>
</html>
