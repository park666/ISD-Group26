<%-- 
    Document   : myregistration
    Created on : 05/05/2019, 3:43:07 PM
    Author     : qingwenxiao
--%>

<%@page import="model.Logs"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="model.Member"%>
<%@page import="model.dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
        
        <style>
            
.navbar{
    background-color:cornflowerblue;
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
     
     .infotable {
        margin-left:150px;
        margin-top: 20px;
                width: 50%;
     }
     
     .loginout{
         margin-left: 10px;
         
     }
  
     .editbtn{
                padding-top: 100px;
                background:lightskyblue;
                width: 90px;
                color:white;
                padding-top:10px;
                text-align: center;
                font-size:20px;
                margin-top: 45px;
                margin-left: 120px;
     }
     
                
      .deletebtn{
                padding-top:100px;
                background:lightskyblue;
                width: 90px;
                color:white;
                padding-top:10px;
                text-align: center;
                font-size:20px;
                margin-top:30px;
               
 }
        </style>
    </head>
    
    <body>
        <% 
            DBManager manager = (DBManager) session.getAttribute("manager");
           Member mem = (Member) session.getAttribute("memberLogin");%>
        
        
        <div class="navbar">
            
            
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ="orders.jsp">Orders </a></td>
              
                <td><a href ='account.jsp'> My Account</a></td>
               
                <td>
                <table width='80%'  >
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
            
      
             
        </div> 
         <h1> My Account Information </h1>
           <hr>
        <div class="container" >
            <table class="infotable"  >
                <tr><td style="font-size:25px"><b>User Id</b></td> </tr>
                <tr><td style="font-szie:25px; color:grey;"> <%= mem.getId()%></td></tr>
            </table>
       
            <table class="infotable"  >
                <tr><td style="font-size:25px"><b>Name</b></td> </tr>
                <tr><td style="font-szie:25px;color:grey;"><%= mem.getName()%></td></tr>
            </table>
            
            
             <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>Email</b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"> <%= mem.getEmail()%></td></tr>
             </table>
            
            
             <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>phone</b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"><%= mem.getPhone()%></td></tr>
             </table>
           
            
            <table class="infotable"  >
                <tr style="padding-top:25px"> <td style="font-size:20px"><b>password </b></td></tr>
                <tr><td style="font-szie:25px;color:grey;"><%= mem.getPassword()%></td></tr>
            </table>
            
 
             <table lass="infotable">
             <tr>
              <td><a href="updateaccount.jsp" class="editbtn">Edit Account</a> </td>
              <td><a href="deleteaccount.jsp"class="deletebtn">Delete Account</a> </td>
              </tr>
             </table>
            
          </div>
         
            <table class="am-table am-table-striped am-table-hover table-main">
                 <thead>
              <tr>
                <th class="table-id">Log ID</th>
                <th class="table-title">Member ID</th>
                <th class="table-type">Login Date</th>
                <th class="table-author am-hide-sm-only">Logout Date</th>
              </tr>
              </thead>
              
            <tbody>
            <%
            //Activate the database search-validate once DBManager functions are completed
            List<Logs> logs=new ArrayList();
           
            logs = manager.getAllLogs();
            for(int i=0;i<logs.size();i++){
                out.print("<tr>");
                 out.print("<td>"+logs.get(i).getLogID()+"</td>");
                out.print("<td>"+logs.get(i).getMemberID()+"</td>");
                out.print("<td>"+logs.get(i).getLoginDate()+"</td>");
                out.print("<td>"+logs.get(i).getLogoutDate()+"</td>");
                
                
                
                      
                 out.print("</tr>");
            }        
        %>
                </tbody>
                <tr></tr>
        </table>                      
    </body>
</html>
