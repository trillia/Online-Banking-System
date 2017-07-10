
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body bgcolor=" SkyBlue">
        	
<%
       
	String uname=request.getParameter("uname");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("dob");
	String branch=request.getParameter("branch");
         String acc=request.getParameter("accno");
        int accno=Integer.parseInt(acc);
	String country=request.getParameter("country");
	String mail=request.getParameter("mail");
        String pass=request.getParameter("password");
	String contact=request.getParameter("contact");
	String address=request.getParameter("address");
        String b=request.getParameter("bal");
        int balance=Integer.parseInt(b);
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
                 Statement s=c.createStatement();
               int r=s.executeUpdate("insert into backaccount values('"+uname+"','"+gender+"','"+dob+"','"+branch+"','"+accno+"','"+country+"','"+mail+"','"+pass+"','"+contact+"','"+address+"','"+balance+"')");
              
		if(r>0)
		{
			out.println("Success");
                        %>
                        <a href="index.html">Click here to login</a>
                        <%
                }
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>	

    </body>
</html>
