<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.String"%>
<!DOCTYPE html>
<html>
<title>Secure Health IOT Get Patient Record</title>
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
     <a href="w3doctorhome.jsp">Home</a>
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
     <h1>Welcome!! <%=session.getAttribute("doctorname") %></h1>
      <!--
      <p class="w3-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
      -->

          <h3>Patient Details</h3>
     <table class="w3-table w3-striped w3-border">
         <thead>
              <tr class="w3-grey">
                 <th>Patient ID</th>
                  <th>Weight(kgs)</th>
                 <th>Height(cms)</th>
                 <!--
               <th>Pulse(mins)</th>
                   <th>Blood Pressure(mm of hg)</th>-->
                    <th>Blood Group</th>
                      <th>BMI</th>
             </tr>
        </thead>

 <%

    
        String docid=(String)session.getAttribute("doctorid");
        String pid=request.getParameter("textfield1");
 //String specs=request.getParameter("textfield1");
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
      Statement statement = connection.createStatement();

 //  out.println(""+docid);
  String query="select * from doctorpatmain where docid='"+docid+"'";
  ResultSet rs = statement.executeQuery(query);
int flag=1;
ArrayList<String> arrlist = new ArrayList<String>();
while(rs.next())
{
arrlist.add(rs.getString("pid"));
}
for(String pt:arrlist)
{

//out.println(""+pt);
//}
           if(pt.equals(pid))
         {



















 //String pid=request.getParameter("textfield1");
 /*
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/phmsdb","root","admin123");
      Statement statement = connection.createStatement();

   */
  String query1="select * from pt_gr where pid='"+pid+"'";
  ResultSet rs1 = statement.executeQuery(query1);
while(rs1.next())
{



%>
<tr>
<td><%=rs1.getString("pid")%></td>
<td><%=rs1.getString("weight")%></td>
<td><%=rs1.getString("height")%></td>
<td><%=rs1.getString("bg")%></td>
<td><%=rs1.getString("bmi")%></td>

</tr>

<%

}
flag=1;
break;
//
} else
     {
      flag=0;
      }
     }
     if(flag==0)
     {
  out.println("<html><body><script>alert('Patient Not Selected!!');window.location='w3doctorhome.jsp';</script></body></html>");
}%>
</table>






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