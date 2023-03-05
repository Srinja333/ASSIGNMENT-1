<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String class=request.getParameter("class");
String section=request.getParameter("section");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");

try 
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+class+"','"+section+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>