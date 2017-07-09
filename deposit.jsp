<%-- 
    Document   : deposit
    Created on : 19 Sep, 2016, 11:51:26 PM
    Author     : TRILLIA.KU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellowgreen">
         <form action="depo.jsp" method="post">
        <center>
            <table>
                <tr>
                
            <center><font size="28" color="brown">Deposit Form</font></tr></center>
       
            <tr>
                <td>Account No:</td><td><input type="text" name="accno"></td><br><br>
            </tr>
            <tr>
                <td>Amount:</td><td><input type="text" name="amount"></td><br><br>
            </tr>
            
            
            
            <tr>
                <td></td>
                <td><input type="submit" value="Deposit"></td>
            </tr>
     
            </table>
            </center>
              </ form>
    </body>
</html>
