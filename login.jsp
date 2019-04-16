<%-- 
    Document   : login
    Created on : 16/04/2019, 2:52:21 PM
    Author     : joshu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>

        <table border="0" style="width:100%; background-color:#CD5C5C">
            <tr>
                <th width="80%" align="centre" style="font-size:36px; font-family: Calibri">Online Movie Store</th>
                <td>Home</td>
                <td>Buy</td>
                <td>Find us</td>
                <td>Account</td>
            </tr>

        </table>

        <form action="#" method="POST">
            
            <fieldset>
                <legend style="font-size:20px; font-family: monospace">Log In</legend>

                <p>Email Address</p>
                <p><input type="email" name="email" placeholder="mail@address.com"></p>

                <p>Password</p>
                <p><input type="password" name="password" placeholder="*******"></p>

                <p><a href="welcome.jsp"><button type="button">Log In</button></a></p>
            </fieldset> 
        </form>


    </body>	
</html>
