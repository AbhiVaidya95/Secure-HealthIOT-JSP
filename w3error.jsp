<%@ page language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>Secure Health IOT Error Page</title>
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
//if(session.getAttribute("doctorname")==null){
//response.sendRedirect("w3index.jsp");

//}
/*
 if(session.getAttribute("doctorname")!=null){
response.sendRedirect("w3doctorhome.jsp");}
 else if(session.getAttribute("patientname")!=null){
response.sendRedirect("w3patienthome.jsp");}
       else if(session.getAttribute("adminname")!=null){
response.sendRedirect("w3adminmenu.jsp");}
    else{
    response.sendRedirect("w3index.jsp");
    */
%>

<div class="w3-topnav w3-large w3-blue">
  <a href="w3doctorhome.jsp">Secure Health IOT</a>
   <div class="w3-right">

  <%
if(session.getAttribute("doctorname")!=null){
 out.println("<a href='w3doctorhome.jsp'>Home</a><a href='w3logout.jsp'>Logout</a>");}
 
 else if(session.getAttribute("patientname")!=null){
out.println("<a href='w3patienthome.jsp'>Home</a><a href='w3logout.jsp'>Logout</a>");}
       else if(session.getAttribute("adminname")!=null){
out.println("<a href='w3adminmenu.jsp'>Home</a><a href='w3logout.jsp'>Logout</a>");}
    else{
   out.println("<a href='w3index.jsp'>Home</a>");
  }
  
  %>
 


  <!--  <a href="w3aboutus.jsp">About</a>-->
    
    </div>
   
</div>
<div>    
  <div class="w3-row">
  
    <div class="w3-col m2 w3-light-grey">
    <!--
      <p><a href="w3viewpt.jsp">View Patient Information</a></p>
       <p><a href="w3getpr.jsp">View Patient Health Record</a></p>
         <p><a href="w3updatepr.jsp">Update Patient Health Record</a></p>
       <p><a href="w3viewpmedr.jsp">View Patient Medecine Consumed</a></p>
        <p><a href="w3viewpmallerr.jsp">View Patient Medecine Allergic</a></p>
        -->
      <!--
      <p><a href="w3addpatient.jsp">Add Patient</a></p>
       <p><a href="w3viewdoctor.jsp">View Doctor</a></p>
     <p><a href="w3viewpatient.jsp">View Patient</a></p>
    -->
    </div>
    
    <div class="w3-col m8 w3-container"> 
     <!-- <h1>Welcome!!</h1><%=session.getAttribute("doctorname") %>-->
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
      -->
      <h1>Following Error Occured</h1><%=request.getParameter("error") %>
      <%
      /*
      if(session.getAttribute("doctorname")!=null){
response.sendRedirect("w3doctorhome.jsp");}
 else if(session.getAttribute("patientname")!=null){
response.sendRedirect("w3patienthome.jsp");}
       else if(session.getAttribute("adminname")!=null){
response.sendRedirect("w3adminmenu.jsp");}
    else{
    response.sendRedirect("w3index.jsp");
    


      }
      */
      %>
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