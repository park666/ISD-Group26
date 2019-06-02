<%-- 
    Document   : updatewelcome
    Created on : 28/05/2019, 12:26:13 PM
    Author     : qingwenxiao
--%>

<%@page import="model.Member"%>
<%@page import="model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated Account</title>
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
    <body>
        
          <% String name = request.getParameter("name");
           String password = request.getParameter("psw");
           String email = request.getParameter("email");
           String phone = request.getParameter("phonenum");%>
           
       <div class="navbar">
            
            
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="index.jsp"> Home </a> </td>
                <td><a href="manage_movie.jsp"> Movies Management</a></td>
                <td><a href ="orders.jsp">Orders </a></td>
        
                <td><a href ='account.jsp'> My Account</a></td>
               
                <td>
                <table width='100%'>
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
       <h1 align="center" padding-top="40px"><font color="blue">You have updated your account information</font></h1>
       
        <%    
            //Activate the database add-function once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            Member mem = (Member)session.getAttribute("memberLogin");
            manager.updateMember(mem.getId(), password, name, email, phone,null, null);
            
  
        %>
    </body>
</html>
