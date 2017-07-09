<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!int tot=0;%>
<html>
<body bgcolor="thistle">
<%
String accno=(String)session.getAttribute("name");
int amount =Integer.parseInt(request.getParameter("amount"));


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
	Statement s=c.createStatement();
	ResultSet rs=s.executeQuery("select *from backaccount where accno='"+accno+"'");
	while(rs.next())
	{
		
		
                tot=amount+rs.getInt(11);
	}
        PreparedStatement ps1=c.prepareStatement("update backaccount set balance=? where accno='"+accno+"'");
	ps1.setInt(1,tot);
	ps1.executeUpdate();
            out.println("Your balance has increased");
            %>
            <br><br><a href="balance.jsp">go to home page</a>
             <%
		
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>
