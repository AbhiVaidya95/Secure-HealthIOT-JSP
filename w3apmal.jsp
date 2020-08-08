<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.io.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Secure Health IOT</title>
</head>


<body>
<% 
String pid=(String)session.getAttribute("patientid");
String pname=(String)session.getAttribute("patientname");
String m=request.getParameter("textarea1");
String newLineChar = System.getProperty("line.separator");
ArrayList<String> meds =new ArrayList<String>(Arrays.asList(m.split(",")));

//File creation
 String strPath = "C:\\Tomcat\\webapps\\phms\\patient\\alle\\"+pid+".txt";
 File strFile = new File(strPath);
 boolean fileCreated = strFile.createNewFile();
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 for(String str:meds)
{
objWriter.write(str);
 //  objWriter.write("\n");
 objWriter.write(newLineChar);
}

 //objWriter.write(meds);
 objWriter.flush();
 objWriter.close();
 out.println("<html><body><script>alert('Medicine Added Successfully');window.location='w3patienthome.jsp';</script></body></html>");


 /*
 //out.println(m);
 out.println(meds.size());
  for(String str:meds)
    {
 out.println(str);
 out.println(" ");

}
*/
%>


</body>
</html>
