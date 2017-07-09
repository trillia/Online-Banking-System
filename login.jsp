
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
		String username=request.getParameter("username");
                  int accountno=Integer.parseInt(username);
		String password=request.getParameter("pass");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
			Statement st=c.createStatement();
			
			ResultSet rs=st.executeQuery("select * from backaccount where accno='"+accountno+"' and pass='"+password+"'");
			if(rs.next())
			{
				
				session.setAttribute("name",rs.getString("accno"));
				
				response.sendRedirect("balance.jsp");
			}
			else
			{
				response.sendRedirect("index.html");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
			
	%>
    </body>
</html>
