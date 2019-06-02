<%-- 
    Document   : updateaccount
    Created on : 20/05/2019, 1:27:25 AM
    Author     : qingwenxiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update account</title>
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
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="index.jsp"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ="orders.jsp">Orders </a></td>
     
                <td><a href ='account.jsp'> My Account</a></td>
               
                <td>
                <table width='100%'>
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
            
      
             
        </div> 
        <form method="post" action="updatedaccount.jsp">
            <div class ="container">
                <h1> Update My Account Details </h1>
                <hr>
                <table class="contenttable">
                    <tr><td><label for="name"> <b>Change Full Name</b></td></label></tr>
                    <tr><td><input type ="text" placeholder="" name="name" required> </td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for="psw"><b>New Password </b></label></td></tr>
                    <tr><td><input type ="password" placeholder="" name="psw" required></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for ="re-psw"><b>Repeat New Password</b> </label></td></tr>
                    <tr><td><input type="password" placeholder="" name ="re-psw" required><td></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for ="email"><b> Change Email</b> </label></td></tr>
                    <tr><td><input type="email" placeholder="" name = "email" required></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for="phonenu"><b>Change Phone Number</b></label></td></tr>
                    <tr><td><input type="text" placeholder="" name="phonenum"></td></tr>
                </table>
                
                 
                
                <button type="submit" class="registerbtn"> Update Details </button>
          
                 
            </div>
           
        </form>
        <h1 align="center" padding-top="40px"><font color="blue">You have already logged out</font></h1>
    </body>
</html>


