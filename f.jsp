<%@page import="java.io.*"%>
<%
 //File creation
 String strPath = "C:\\Tomcat\\webapps\\phms\\example.txt";
 File strFile = new File(strPath);
 boolean fileCreated = strFile.createNewFile();
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 objWriter.write("This is a test");
 objWriter.flush();
 objWriter.close();
%> 