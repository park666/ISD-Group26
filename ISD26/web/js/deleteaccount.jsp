<%-- 
    Document   : deleteaccount
    Created on : 31/05/2019, 6:37:23 PM
    Author     : qingwenxiao
--%>

<%@page import="model.Member"%>
<%@page import="model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member canceled</title>
        <style>
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
                <td><a class="active" href="#">Home</a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ="#">Orders </a></td>
                <td><a href ="#">Cart </a></td>
                <td><a href ='myregistration.jsp'> My Account</a></td>
                
                <td>
                <table width='80%'  >
                    <td align='right'><a href ="login.jsp" > <font color='maroon'><strong>Login</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
            

                
        
         </div> 
        <%
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            Member member = (Member) session.getAttribute("memberLogin");
           manager.deleteMember(member.getId());
           session.invalidate();
            
          %>
          <h1 align="center" padding-top="40px"><font color="blue">Your membership has been canceled</font></h1>
    </body>
</html>