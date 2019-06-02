<%-- 
    Document   : login
    Created on : 27/05/2019, 11:14:36 PM
    Author     : qingwenxiao
--%>
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
            
            
            <table width="70%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
              
               
                <td>
                <table width='50%'  >
                    <td align='right'><a href ="#" > <font color='maroon'><strong>Sign up</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
        </div> 
        <form method="post" action="loginaction.jsp">
            
            <div class ="container">
                <h2> Login my account </h2>
                <hr>
                <table class="contenttable">
                    <tr><td><label for="loginID"> <b>ID</b></td></label></tr>
                    <tr><td><input type ="text" placeholder="" name="loginID" required> </td></tr>
                </table>
                
                <table class="contenttable">
                    <tr><td><label for="loginpsw"><b>Password </b></label></td></tr>
                    <tr><td><input type ="password" placeholder="" name="loginpsw" required></td></tr>
                    <tr>
                        <td>
                            <select name="type">
                                 <option value="member">member</option>
                                 <option value="staff">staff</option>
                            </select>
                        </td>
                    </tr>
                </table>
                
                
              
                
                 
                
                <button type="submit" class="registerbtn"> Login</button>   
            </div>
        </form>
 
    </body>
</html>

