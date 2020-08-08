<%@ page language="java" %>
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
.style8 {
	font-size: 18px;
	color: #CC3300;
}
.style10 {
	font-size: 16px;
	font-weight: bold;
}
.style11 {color: #0000FF}
.style12 {color: #0000FF; font-size: 18px; }
-->
</style>
</head>
<body>

<script language="javascript">

function validate(form) 
{	
if (form.textfield.value=="")
	{	alert("Username should not be blank. Please enter it.");
		form.textfield.focus(); return false;
	}

if (form.textfield2.value=="")
	{	alert("Password should not be blank. Please enter it.");
		form.textfield2.focus(); return false;
	}
	}	
</script>

<table width="731" border="0" align="center" cellspacing="0"> 
<tr>

</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form" onSubmit="return validate(this)" method="post" action="naw1.jsp">
  <table width="647" height="326" border="0">
    <tr>
      <td height="129" colspan="3"><div align="center" class="style10">
        <p class="style12">Administrator Login Form</p>
        <p class="style11">....................................................................</p>
        <p class="style11">&nbsp;</p>
        </div></td>
      </tr>
    <tr>
      <td width="287" height="43"><div align="right"><strong>User Name </strong></div></td>
      <td width="212"><label>
        <input type="text" name="textfield">
        <br>
      </label></td>
      <td width="134">&nbsp;</td>
    </tr>
    <tr>
      <td height="38"><div align="right"><strong>Password</strong></div></td>
      <td><label>
        <input type="password" name="textfield2">
      </label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><label>
        <div align="center">
          <input type="submit" name="Submit" value="Login">
          </div>
      </label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><label> <br>
          <br>
              <br>
      </label></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
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
