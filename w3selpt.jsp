<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>Secure Health IOT-Doctor Home</title>
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
if(session.getAttribute("doctorname")==null){
response.sendRedirect("w3index.jsp");

}
%>

<div class="w3-topnav w3-large w3-blue">
  
<a href="w3doctorhome.jsp">Secure Health IOT</a>

 <!--   <a href="w3aboutus.jsp">About</a>-->
     <div class="w3-right">
     
  
    <a href="w3logout.jsp">Logout</a>
    </div>
</div>

<div>    
  <div class="w3-row">
  
    <div class="w3-col m2 w3-light-grey">
    
      <p><a href="w3viewpt.jsp">View Patient Information</a></p>
       <p><a href="w3getpr.jsp">View Patient Health Record</a></p>
        <p><a href="w3getcpr.jsp">View Patient Currrent Record</a></p>

         <p><a href="w3updatepr.jsp">Update Patient Health Record</a></p>
         <p><a href="w3selpt.jsp">Select Patient</a></p>
          <p><a href="w3medtimer.jsp">Add Patient Medicine Timer</a></p>
       <p><a href="w3viewpmedr.jsp">View Patient Medecine Consumed</a></p>
        <p><a href="w3viewpmallerr.jsp">View Patient Medecine Allergic</a></p>
      <!--
      <p><a href="w3addpatient.jsp">Add Patient</a></p>
       <p><a href="w3viewdoctor.jsp">View Doctor</a></p>
     <p><a href="w3viewpatient.jsp">View Patient</a></p>
    -->
    </div>
    
    <div class="w3-col m8 w3-container"> 
      <h1 >Welcome!! <%=session.getAttribute("doctorname") %></h1>
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>





      -->


       <h3>Patient Request</h3>
     

     <table class="w3-table w3-striped w3-border">
         <thead>
              <tr class="w3-grey">
                 <th>Patient ID</th>
                 <!--
                  <th>Name</th>
                 <th>Phone</th>
               <th>Specialization</th>
                   <th>Address</th>
        -->
             </tr>
        </thead>

 <%
 String docid=(String)session.getAttribute("doctorid");
 //String specs=request.getParameter("textfield1");
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
      Statement statement = connection.createStatement();

 //  out.println(""+docid);
  String query="select * from patientdoctemp where docid='"+docid+"'";
  ResultSet rs = statement.executeQuery(query);

 // String pid;
  //String pid1;


/*
if(rs.next()==true)
{
out.println("<html><body><script>alert('No Doctor Found With Speciallization!!');window.location='w3srchdr.jsp';</script></body></html>");
}
*/
while(rs.next())
{
//pid=(String)rs.getString("pid");
//pid1=(String)rs1.getString("pid");

//if(pid==pid1)
//{

%>
<tr>

<td><%=rs.getString("pid")%></td>
<!--

-->
<!--

-->
</tr>

<%}%>
</table>
</br>
  <form name="form" method="post" action="w3spt.jsp" class="w3-container">
  <!--
 <label>Doctor ID</label>
  <input class="w3-input" type="text" name="textfield1" placeholder="DR1,DR2,...">

  -->
<label class="w3-label w3-text-blue"><b>Patient ID</b></label>
  <input class="w3-input w3-border w3-light-grey" type="text" placeholder="PR1,PR2,..." name="textfield1">
  <input type="submit" name="Submit" value="Submit" class="w3-btn w3-blue">
 </form>












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