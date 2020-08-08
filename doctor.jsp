<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Clinic  Management  System</title>
<style type="text/css">
<!--
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
.style8 {
	font-size: 18px;
	color: #CC3300;
}
.style10 {
	color: #0000FF;
	font-size: 24px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>

<script language="javascript">


</script>

<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form" method="post" action="adddr.jsp">
  <table width="673" height="356" border="0">
    <tr>
      <td width="184" height="42"><a href="adminmenu.jsp">Admin Menu</a> </td>
      <td width="230"><div align="center" class="style10">
        <p>Add Doctors  Details</p>
        </div></td>
      <td width="245"><label></label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Doctor Id.</strong> <% 
	  
 
	  
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
		  Statement statement = connection.createStatement();

	 
  String query="select * from dr_master";
  ResultSet rs = statement.executeQuery(query);
int i=0;

 while(rs.next())
 {
 i++;
 }
 String  id="DR" +(i+1);
%>	  </td>
      <td><input type="text" name="textfield" value='<%=id%>' ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Name </strong></td>
      <td><label>
        <input name="textfield2" type="text" >
      </label></td>
    </tr>
    <tr>
      <td height="62">&nbsp;</td>
      <td><strong>Gender</strong></td>
      <td><p>&nbsp;</p>
        <p>
          <label>
            <input type="radio" name="radio" value="Male">
            Male</label>
          <input type="radio" name="radio" value="Female">
          <label>Female</label>
          <br>
          <label></label>
        </p>
        <label></label></td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
      <td><strong>Age</strong></td>
      <td><label>
        <input name="textfield3" type="text" id="textfield3">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Address</strong></td>
      <td><label>
        <input name="textfield4" type="text" id="textfield4">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Phone</strong></td>
      <td><label>
        <input name="textfield5" type="text" id="textfield5" >
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Date of Joining</strong></td>
      <td><input name="textfield6" type="text" id="textfield6"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Designation</strong></td>
      <td><input name="textfield7" type="text" id="textfield7"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Department</strong></td>
      <td><input name="textfield8" type="text" id="textfield8"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Specialization</strong></td>
      <td><input name="textfield9" type="text" id="textfield9"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Timings</strong></td>
      <td><input name="textfield10" type="text" id="textfield10"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
      <td><label>
        
          <div align="right"></div>
      </label></td>
      <td><input type="submit" name="Submit" value="Submit"></td>
    </tr>
  </table>
  
</form>
<h1 class="style8">&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
</body>
</html>			

