<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.String"%>
<!DOCTYPE html>
<html>
<title>Secure Health IOT View Patient Medicine Allergic</title>
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
<div class="w3-container w3-blue" >
          <h3>List of Medicines Allergic to Patient </h3>

</div>
          <ul class="w3-ul w3-card-4" >
 
  
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














       try
            {
            String newLineChar = System.getProperty("line.separator");
          //  String pid=request.getParameter("textfield1");
            String pmedfilep = "C:\\Tomcat\\webapps\\phms\\patient\\alle\\";
            String fileName =""+pid+".txt";
            String txtFilePath = pmedfilep + fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
              //  sb.append(line+""+newLineChar);
               out.println("<li>"+line+"</li>");
            }
            //out.println(sb.toString()); 
           //  out.println("<li>"+sb.toString()+"</li>");
         }
          catch(FileNotFoundException e)
         {
         out.println("<html><body><script>alert('Patient Record Does Not Exits!!');window.location='w3doctorhome.jsp';</script></body></html>");
       }
         catch(Exception e)
         {
         out.println("<html><body><script>alert('Error Retriving Record!!:"+e.getMessage()+"');window.location='w3doctorhome.jsp';</script></body></html>");
       }

       flag=1;
       break;
       }
       else
       {
       flag=0;
       }
     }
     if(flag==0)
     {
  out.println("<html><body><script>alert('Patient Not Selected!!');window.location='w3doctorhome.jsp';</script></body></html>");
}
        %>




</ul>


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