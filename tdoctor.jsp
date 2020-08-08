<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>mSwasthya</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">mSwasthya</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
      </ul>
      <!--
      <ul class="nav navbar-nav navbar-right">
        <li><a href="tlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      -->
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="doctor.jsp">Add Doctor</a></p>
      <p><a href="#">Add Patient</a></p>
     
    </div>

    
    <div class="col-sm-8 text-left"> 
      <h1>Welcome Administrator</h1>
      <!--
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
        -->
        <table width="731" border="0" align="center" cellspacing="0"> 
<tr>
  <td colspan="2" height="120"></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form" method="post" action="adddr.jsp">
  <table width="673" height="356" border="0">
    <tr>
      <td width="184" height="42">
      <td width="230"><div align="center" class="style10">
        <p><h3>Add Doctors  Details</h3></p>
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
%>    </td>
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


    </div>
  
    <!--
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
    -->
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Project by Aditya Gupta,Priyanka Patil....</p>
</footer>

</body>
</html>
