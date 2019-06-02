<%-- 
    Document   : regiswelcome
    Created on : 20/05/2019, 1:37:43 PM
    Author     : qingwenxiao
--%>

<%@page import="model.dao.*"%>
<%@page import="model.Member"%>
<%@page import="java.util.Random"%>
<%@page import="controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome to OMS</title>
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
        
        <% String name = request.getParameter("name");
           String password = request.getParameter("psw");
           String email = request.getParameter("email");
           String phone = request.getParameter("phonenum");
           String address = request.getParameter("address");
           String type = request.getParameter("type");
           int key =(new Random()).nextInt(999999);
           String id = ""+key;%>
           
        <div class="navbar">
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ="#">Orders </a></td>
                <td><a href ='myregistration.jsp'> My Account</a></td>
                
                <td>
                <table width='80%'  >
                    <td align='right'><a href ="login.jsp" > <font color='maroon'><strong>Login</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
            

                
        
         </div> 
       
           <h1 align="center" padding-top="40px"><font color="blue">Welome to Joining OMS!</font></h1>
        <div class="container" >
            <table class="infotable" width="100%"  >
                <tr><td style="font-size:20px"><b>User Id</b></td> </tr>
                <tr><td style="font-szie:25px;color:grey;"><%=id%></td></tr>
            </table>
       
            <table class="infotable"  >
                <tr><td style="font-size:20px"><b>Name</b></td> </tr>
                <tr><td style="font-szie:25px;color:grey;"><%=name%></td></tr>
            </table>
            
            
             <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>Email</b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"> <%=email%></td></tr>
             </table>
            
            
             <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>phone</b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"><%=phone%></td></tr>
             </table>
           
            
            <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>password </b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"><%=password%></td></tr>
            
          </div>
           <%    
            //Activate the database add-function once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            
            manager.addMember(id,password,name,email,phone, address, type);
            
            Member member = new Member(id,password,name,email,phone,address,type);
            
            session.setAttribute("member", member);
          %>
    </body>
</html>
