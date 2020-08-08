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












//String pid=(String)session.getAttribute("patientid");
//String pname=(String)session.getAttribute("patientname");
//String pid=(String)request.getParameter("textfield1");
//String m=request.getParameter("textfield1");
String m=(String)request.getParameter("textfield2");






String newLineChar = System.getProperty("line.separator");
ArrayList<String> medst =new ArrayList<String>(Arrays.asList(m.split(",")));

//File creation
 String strPath = "C:\\Tomcat\\webapps\\phms\\patient\\timer\\"+pid+".txt";
 File strFile = new File(strPath);
 boolean fileCreated = strFile.createNewFile();
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 for(String str:medst)
{
objWriter.write(str);
 //  objWriter.write("\n");
 objWriter.write(newLineChar);
}

 //objWriter.write(meds);
 objWriter.flush();
 objWriter.close();
 out.println("<html><body><script>alert('Medicine Timer Added Successfully');window.location='w3doctorhome.jsp';</script></body></html>");


 /*
 //out.println(m);
 out.println(meds.size());
  for(String str:meds)
    {
 out.println(str);
 out.println(" ");

}
*/
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


</body>
</html>
