<%-- 
    Document   : logout
    Created on : 27/05/2019, 11:46:28 PM
    Author     : qingwenxiao
--%>

<%@page import="java.util.Date"%>
<%@page import="model.Logs"%>
<%@page import="model.dao.DBManager"%>
<%@page import="controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Logout</title>
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
  
    
 
         
            </style>
    </head>
    <body>
        <div class="navbar">
            
            
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="index.jsp" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                
               
                <td>
                <table width='100%'>
                    <td align='right'><a href ="" > <font color='maroon'><strong>Sign up</strong></font></a></td>
                    <td align='right'><a href ="#" > <font color='maroon'><strong>Login</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
            
      
             
        </div> 
        <div><span class="time" id="time" ></span></div>
        <%      
            DBManager manager = (DBManager) session.getAttribute("manager");
            Logs log  = (Logs) session.getAttribute("log");
            Date date = new Date();
            manager.addLogout(log.getLogID(), date.toString());
            
            
            session.invalidate();
        %> 
        <h1 align="center" padding-top="40px"><font color="blue">You have already logged out</font></h1>
    </body>
</html>

