<%-- 
    Document   : OrderDelete
    Created on : 01/06/2019, 10:49:17 PM
    Author     : qingwenxiao
--%>

<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders</title>
        <link rel="stylesheet" href="amazeui.min.css"/>
  <link rel="stylesheet" href="admin.css">
        <style>
.navbar{
    background-color:cornflowerblue;
    width: 100%;
    height:100px;
 }
 
 .navbar a{
    float:left;
    color:#f2f2f2;
    text-align: center;
    padding: 16px 20px;
    text-decoration: none;
  
    font-size: 20px;
 }
 

 .navbar a:hover {
  background-color: #ddd;
  color: black;
}
 
 /* add a color to the active /current linl */
 .navbar a.active{
     backround-color:yellow;
     color: white;
     }
     
   
     
     .loginout{
         margin-left: 10px;
         
     }
  
    
 
         .container{
                padding:10px;
                background-color: white;
            }
            
            .contenttable{
                margin-left: 150px;
                margin-top: 20px;
                width: 55%;
            }
            input{
                width:75%;
                height:35px;
              
                margin-top:2px;
                
                background:#f1f1f1;
                
            }
            .registerbtn{
                opacity:1;
                background:lightskyblue;
                width: 30%;
                color:white;
                padding: 15px 32px;
                text-align: center;
                display: inline-block;
                font-size:20px;
                margin-left: 200px;
                margin-top: 35px;
                
            }
            </style>
    </head>
    </head>
    <body>
         <div class="navbar">
            
            
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></td>
                <td><a href="#"> Movies </a></td>
                <td><a href="orders.jsp"> Orders </a></td>
              
               
                <td>
                <table width='100%'>
                    <td align='right'><a href ="registration.jsp" > <font color='maroon'><strong>Sign Up</strong></font></a></td>
                    <td align='right'><a href ="login.jsp" > <font color='maroon'><strong>Login</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
            
      
             
        </div> 
         <jsp:include page="/ConnServlet" flush="true" />
        
                  
         <%
            //Activate the database search-validate once DBManager functions are completed
            List<Order> orderrList=new ArrayList();
            DBManager manager = (DBManager)session.getAttribute("manager");
            int id= Integer.parseInt(request.getParameter("id"));
            manager.deleteOrder(id);
            //response.sendRedirect("orders.jsp");
                  
                 
        %>
             
    </body>
</html>