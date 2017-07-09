<%-- 
    Document   : transaction
    Created on : 12 Sep, 2016, 3:06:54 PM
    Author     : TRILLIA.KU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="plum">
         <form action="trans.jsp" method="post">
        <center>
            
            <center><font size="28" color="brown">Transaction Form</font></center><br>
            <table>
    
            <tr>
                <td>Account No</td><td><input type="text" name="accno"></td>
            </tr>
            <tr>
            <td>Transfer  Account No</td><td><input type="text" name="taccno"></td>
            </tr>
            <tr>
                <td>Amount  </td><td><input type="text" name="amount"></td>
            </tr>
             
            <tr></tr>
            <tr>
                <td></td>
                <td><input type="submit" value="transfer"></td>
            </tr>
        </form>
            </table>
            </center>
    </body>
</html>
