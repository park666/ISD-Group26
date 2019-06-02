<%-- 
    Document   : create_customer
    Created on : May 30, 2019, 2:01:44 PM
    Author     : joshu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="model.*" %>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             .customertable{
                padding-top: 60px;
                padding-left:100px;
                border: 3;
             }
                         .container{
                width:100%;
                padding:10px;
                background-color: white;
            }
            
            .contenttable{
                margin-left: 150px;
                margin-top: 20px;
                width: 50%;
            }
           .navbar{
             height: 100px;
            background-color:cornflowerblue;
    
             }
 
       .navbar a{
      float:left;
     color:#f2f2f2;
      text-align: left;
    padding: 16px 20px;
    text-decoration: none;
  
        font-size: 20px;
       }
       
           
            navbar a.active{
     backround-color:yellow;
     color: white;
     }
     
     .infotable {
        margin-left:120px;
        margin-top: 20px;
                width: 50%;
          }
                
        
            </style>
    </head>
    
    <body>
           
        <div class="navbar">
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="indes.jsp"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ='#'> Member Management</a></td>
                
                <td>
                <table width='80%'  >
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         </div> 
        <br>
  
        <form  method="POST" action="create_customeraction.jsp">
            <h2>Create Customer Record:</h2>
            <table class="customertable">

                <tr><td>Customer ID</td></tr>
                <tr><td><input type="text" name="id" Placeholder="Enter Customer ID" required></td></tr>
                <tr><td>Password</td></tr>
                <tr><td><input type="text" name="password" placeholder="Enter Password" required></td></tr>
                <tr><td>Full name</td></tr>
                <tr><td><input type="text" name="name" placeholder="Enter Name" required></td></tr>
                <tr><td>Email</td></tr>
                <tr><td><input type="text" name="email" placeholder="Enter Email" required></td></tr>
                <tr><td>Phone</td></tr>
                <tr><td><input type="text" name="phone" placeholder="Enter Phone Number" required></td></tr>
                <tr><td>Address</td></tr>
                <tr><td><input type="text" name="address" Placeholder="Enter Address" required></td></tr>
                <tr><td>Type</tr>
                <td> 
                    <select name="type">
                        <option value="Company">Company</option>
                        <option value="Individual">Individual</option>
                    </select>
                </td>
                <tr></tr>            
                <td><input type="hidden" name="submitted" value="yes"></td>
                <tr><td><input type="submit" value="Add Customer"></td></tr>
                <tr><td><a href="viewCustomer.jsp">View Customer Records</a></td></tr>
            </table>
        </form>
    </body>
</html>
