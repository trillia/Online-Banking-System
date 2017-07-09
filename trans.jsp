
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! int tot=0,tot1=0;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="maccosin">
        <%
	String acc=(String)session.getAttribute("name");
        int accno=Integer.parseInt(acc);
	int taccno=Integer.parseInt(request.getParameter("taccno"));
	 int amount =Integer.parseInt(request.getParameter("amount"));
	
        try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
                Statement s=c.createStatement();
                ResultSet rs=s.executeQuery("select *from backaccount where accno='"+taccno+"'");
                while(rs.next())
                {
		
		
                   tot=amount+rs.getInt(11);
                }
                PreparedStatement ps=c.prepareStatement("update backaccount set balance=? where accno='"+taccno+"'");
                ps.setInt(1,tot);
                ps.executeUpdate();
                 Class.forName("com.mysql.jdbc.Driver");
                Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
                Statement s1=c1.createStatement();
        
                ResultSet rs1=s1.executeQuery("select *from backaccount where accno='"+accno+"'");
                while(rs1.next())
                {
		
		
                tot1=rs1.getInt(11)-amount;
                }
                  PreparedStatement ps1=c.prepareStatement("update backaccount set balance=? where accno='"+accno+"'");
                ps1.setInt(1,tot1);
                ps1.executeUpdate();
                out.println("Your transaction is successfully executed");
                %>
                    <br><br><a href="balance.jsp">Check your current balance</a>
                <%
           
        }
	catch(Exception e)
	{
		out.println(e);
	}
%>	
</body>
</html>



