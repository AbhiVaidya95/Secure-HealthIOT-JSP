<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>Secure Health IOT - Add General Information</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<style>
/* Set the height of the grid so that left and right col can be 100% (adjust as needed) */
.w3-row {height: 600px}
    
/* Set a 100% height to left and right col */
.w3-col.m2, w3-col.m2 {height: 100%;}
    
/* On small screens, set grid height to 'auto' */
@media screen and (max-width: 601px) {
  .w3-row {height:auto;} 
}
</style>
<body>
<%
if(session.getAttribute("patientname")==null){
response.sendRedirect("w3index.jsp");

}
%>

<div class="w3-topnav w3-large w3-blue">
  <a href="w3patienthome.jsp">Secure Health IOT</a>
 

 <!--   <a href="#">About</a>-->
     <div class="w3-right">
      <a href="w3patienthome.jsp">Home</a>
    <a href="w3logout.jsp">Logout</a>
    </div>
</div>

<div >    
  <div class="w3-row">
  
    <div class="w3-col m2 w3-light-grey">
    
      <p><a href="w3addpgrecord.jsp">Enter General Record</a></p>
       <p><a href="w3viewpgrecord.jsp">View General Record</a></p>
        <p><a href="w3viewpgcurrecord.jsp">View Currrent Record</a></p>
        <p><a href="w3srchdr.jsp">Search Doctor</a></p>
        <p><a href="w3seldoc.jsp">Select Doctor</a></p>
              <p><a href="w3addpmed.jsp">Enter Medicine Consumed</a></p>
          <p><a href="w3addpmall.jsp">Enter Medicine Allergies</a></p>
      <!--
      <p><a href="w3addpatient.jsp">Add Patient</a></p>
     <p><a href="w3viewdoctor.jsp">View Doctor</a></p>
     <p><a href="w3viewpatient.jsp">View Patient</a></p>
      -->
    </div>
    
    <div class="w3-col m8 w3-container"> 
      <h1>Welcome!!</h1><%=session.getAttribute("patientname") %>
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
      -->
       <h3>Doctor Details</h3>
    <!--    <form name="form" method="post" action="w3seldoc.jsp" class="w3-container"  onSubmit="submitForm(this.form)">
-->
     <table class="w3-table w3-striped w3-border">
         <thead>
              <tr class="w3-grey">
                 <th>Doctor ID</th>
                  <th>Name</th>
                 <th>Phone</th>
               <th>Specialization</th>
                   <th>Address</th>
        
             </tr>
        </thead>

 <%
 String specs=request.getParameter("textfield1");
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
      Statement statement = connection.createStatement();

   
  String query="select * from dr_master where specs like '%"+specs+"%'";
  ResultSet rs = statement.executeQuery(query);
/*
if(rs.next()==true)
{
out.println("<html><body><script>alert('No Doctor Found With Speciallization!!');window.location='w3srchdr.jsp';</script></body></html>");
}
*/
while(rs.next())
{



%>
<tr>
<td><%=rs.getString("drid")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("phone")%></td>
<td><%=rs.getString("specs")%></td>

<td><%=rs.getString("address")%></td>
<!--
<td><input class="w3-check" type="checkbox" name="check1" onclick="storedoc()" onchange="storedoc()"></td>
 <input type = "hidden" name ="score"/>
 <script>
function storedoc()
{
  //alert("<%=rs.getString("drid")%>");
  localStorage.setItem("docimf","<%=rs.getString("drid")%>");
}
 //var storedoc += localStorage.getItem("docimf");
 alert(""+storedoc);
</script>
-->
</tr>

<%}%>
</table>
<!--
<input type="submit" name="Submit" value="Submit" class="w3-btn w3-blue-grey">

 </form>
-->



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