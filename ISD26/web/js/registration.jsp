<%-- 
    Document   : registration
    Created on : 05/05/2019, 12:15:58 PM
    Author     : qingwenxiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
            
            
            <table width="50%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
              
               
                <td>
                <table width='50%'  >
                    <td align='right'><a href ="registration.jsp" > <font color='maroon'><strong>Login</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
        </div> 
        <form method="post" action="registerwelcome.jsp">
            
            <div class ="container">
                <h2> OMS Register </h2>
                <hr>
                <table class="contenttable">
                    <tr><td><label for="name"> <b>Full Name</b></td></label></tr>
                    <tr><td><input type ="text" placeholder="" name="name" required> </td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for="psw"><b>Password </b></label></td></tr>
                    <tr><td><input type ="password" placeholder="" name="psw" required></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for ="re-psw"><b>Repeat Password</b> </label></td></tr>
                    <tr><td><input type="password" placeholder="" name ="re-psw" required><td></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for ="email"><b>Email</b> </label></td></tr>
                    <tr><td><input type="text" placeholder="" name = "email" required></td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for="phonenum"><b>Phone Number</b></label></td></tr>
                    <tr><td><input type="text" placeholder="" name="phonenum"></td></tr>
                </table>
                
                 <table class="contenttable">
                    <tr><td><label for ="address"><b>Address</b> </label></td></tr>
                    <tr><td><input type="text" placeholder="" name = "address" required></td></tr>
                </table>
                
                <table>
                
                <td> 
                    <select class="contenttable" name="type">
                        <option value="Company">Company</option>
                        <option value="Individual">Individual</option>
                    </select>
                </td>
                <tr></tr>
                </table>
                 
                
                <button type="submit" class="registerbtn">Register</button>
          
                 
            </div>
            <hr>
            <p style="margin-left: 30px"> Already have an account? <a href="#"> Login</a> </p>
        </form>
         
    </body>
</html>
