<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.FileNotFoundException"%>
<!DOCTYPE html>
<html>
<title>Secure Health IOT - View Current Information</title>
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
     <h1>Welcome!! <%=session.getAttribute("patientname") %></h1>
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
                
                 
                   <th>Blood Pressure(mm of hg)</th>
                   
                   <!-- <th>Pulse</th>-->
             </tr>
        </thead>

 <%        
            try
            {
            String newLineChar = System.getProperty("line.separator");
           // String pid=request.getParameter("textfield1");
           String pid=(String)session.getAttribute("patientid");
            String pmedfilep = "C:\\Tomcat\\webapps\\phms\\patient\\bp\\";
            String fileName =""+pid+".txt";
          // String fileName =""+pid;
            String txtFilePath = pmedfilep + fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;


            String pmedfilep1 = "C:\\Tomcat\\webapps\\phms\\patient\\pulse\\";
            String fileName1 =""+pid+".txt";
            String txtFilePath1 = pmedfilep1 + fileName1;
            BufferedReader reader1 = new BufferedReader(new FileReader(txtFilePath1));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb1 = new StringBuilder();
            String line1;


           // line = reader.readLine();
           // line1 = reader1.readLine();



            while((line = reader.readLine())!=null && (line1 = reader1.readLine())!= null){
              //  sb.append(line+""+newLineChar);
               out.println("<td>"+line+"</td>");

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
         out.println("<html><body><script>alert('Error Retriving Record!!:"+e.getClass()+"');window.location='w3doctorhome.jsp';</script></body></html>");
       }

        %>
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