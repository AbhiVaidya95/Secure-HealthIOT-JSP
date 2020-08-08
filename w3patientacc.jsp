<%@ page language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>Secure Health IOT Doctor-Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<style>
/* Set the height of the grid so that left and right col can be 100% (adjust as needed) */
.w3-row {height: 500px}
    
/* Set a 100% height to left and right col */
.w3-col.m2, w3-col.m2 {height: 100%;}
    
/* On small screens, set grid height to 'auto' */
@media screen and (max-width: 601px) {
  .w3-row {height:auto;} 
}
</style>
<body>
<%
if(session.getAttribute("patientid")==null){
response.sendRedirect("w3index.jsp");

}
%>
<div class="w3-topnav w3-large w3-blue">
  <a href="w3patienthome.jsp">Secure Health IOT</a>
  


  <!--  <a href="#">About</a>-->
     <div class="w3-right">
    <a href="w3logout.jsp">Logout</a>
    </div>
</div>

<div>    
  <div class="w3-row">
  
    <div class="w3-col m2 w3-light-grey">
    <!--
      <p><a href="w3adddoctor.jsp">Add Doctor</a></p>
      <p><a href="w3addpatient.jsp">Add Patient</a></p>
       <p><a href="w3viewdoctor.jsp">View Doctor</a></p>
     <p><a href="w3viewpatient.jsp">View Patient</a></p>
     --> 
    </div>
    
    <div class="w3-col m8 w3-container"> 
      <h1>Welcome!!</h1>
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
      -->

         <div class="w3-card-4">
      <div class="w3-container w3-blue">
  <h4>Create Username and Password for</h4><%=session.getAttribute("patientid") %>
    </div>
      <form name="form" method="post" action="w3addptlogin.jsp" class="w3-container">
        <label>Username</label>
  <input class="w3-input" type="text" name="textfield1">

  <label>Password</label>
  <input class="w3-input" type="password" name="textfield2">
    <input type="submit" name="Submit" value="Submit" class="w3-btn w3-blue-grey">

       </form>
     </div>
    </div>

    
    <div class="w3-col m2 w3-light-grey w3-padding">
    <!--
      <div class="w3-card-2 w3-padding">
        <p>ADS</p>
      </div><br>
      <div class="w3-card-2 w3-padding">
        <p>ADS</p>
      </div>
    </div>
    -->
  </div>
</div>
</div>
<footer class="w3-container w3-blue w3-center">
  <h5>Project by B.E.</h5>
  <p>Abhishek Vaidya, Avinash Patil, Nilesh Patil, Mayur Patil, Shubham Patil</p>
</footer>

</body>
</html> 