

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
    <center>
        <table>
            <tr> 
            <br>
            <center><font size="10" color="mediumvilotred">Register Page</font></tr></center>
            <tr><form action="register.jsp" method="post"></tr>
            <tr>
            <td>Username:</td><td><input type="text" name="uname"></td><br><br>
            </tr>
            <tr>
                <td>Gender:</td><td><input type="radio"  name="gender" value="Male">Male<input type="radio" name="gender" value="Female">Female</td>
            </tr>
            <tr>
                <td>Dob:</td><td><input type="text" name="dob"></td>
            </tr>
            <tr>
                <td>Branch:</td><td><input type="text" name="branch"></td>
            </tr>
            <tr>
                <td>Accno:</td><td><input type="text" name="accno" ></td>
            </tr>
            <tr>
                <td>Country:</td><td> <select name="country">
                                                                <option value="India">India</option>
                                                                <option value="USA">USA</option>
                                                                <option value="Pakisthan">Pakistan</option>
								<option value="Australia">Australia</option>
								<option value="China">China</option>
								</select></td></tr>
            <tr>
                <td>mail:</td><td><input type="text" name="mail"></td>
            </tr>
            <tr>
                <td>Password:</td><td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td>Contact:</td><td> <input type="text" name="contact"></td>
            </tr>
            <tr>
                <td>Address:</td><td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td>Balance:</td><td><input type="text" name="bal"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Register"></td>
            </tr>
           </form>
            </table>
        </center>
    </body>
</html>
