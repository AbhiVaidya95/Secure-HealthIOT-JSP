<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Clinic  Management System</title>
<style type="text/css">
<!--
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
.style11 {
	color: #0000FF;
	font-size: 18px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120">
</tr>

<tr>
<td width="150" align="left" valign="top">

<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form action="" method="post" name="form1" class="style11">
  <div align="center">
    <p>OPD Patient Details </p>
    </div>
</form>
<table width="677" border="1" cellspacing="0">
<tr>
<td width="81"><strong>Card No </strong></td>
<td width="148"><b>Name</b></td>
<td width="128"><strong>Gender</strong></td>
<td width="62"><strong>Department</strong></td>

<td width="116"><strong>Doctor</strong></td>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement statement = connection.createStatement();

	 
  String query="select * from pt_master";
  ResultSet rs = statement.executeQuery(query);
while(rs.next())
{



%>
<tr>
<td><%=rs.getString("pid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("age")%></td>
<td><%=rs.getString("address")%></td>

<td><%=rs.getString("gender")%></td>
</tr>
<%}%>
</table>
   </p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
</body>
</html>
 
