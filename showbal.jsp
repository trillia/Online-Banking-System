<%@page import="java.sql.*"%>
<%! int t=1;%>
<html>
   
     <body bgcolor=" SkyBlue">
    <%
         try
        {
            String accno=(String)session.getAttribute("name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1","root","");
            Statement st=c.createStatement();
            %>
           
    <center><table>
            <h2 style="color:red"><b>SHOW BALANCE</b></h2><br>
            <%
               ResultSet rs=st.executeQuery("select *from backaccount where accno='"+accno+"'");
                while(rs.next())
                {   
                    
                   %> 
                    <tr>
                    <h3 style="color:blue"><td><b> UserName=</td><td><%=rs.getString(1)%> </td>
                    </tr>
                    <tr>
                        <td><b>Account No=</td><td><%=rs.getInt(5)%></td>
                    </tr>
                    <tr>
                        
                        <td><b>Balance   =</td><td><%=rs.getInt(11)%></td></b></h3>
                    </tr>
                   
               <% }%>
        </table>
                <br>
                <br>
                    <form action="balance.jsp" method="post" >
           
                        <input type="submit" value="home page">
        </form>
    
                
    </center>
        
        <%}
 catch(Exception e)
{
out.println(e);
}%>      
                    
     
    </body>
</html>