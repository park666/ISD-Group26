<%-- 
    Document   : viewCustomer
    Created on : May 30, 2019, 8:41:13 PM
    Author     : joshu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import ="model.*" %>
        <%@page import="model.dao.*"%>
        <%@page import="controller.*"%>
        <%@page import="java.util.*"%>
        <%@page import ="java.sql.Connection" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .customertable{
                padding-top: 60px;
                padding-left:100px;
                border: 3;
                
            }
            table tr:not(:first-child){
                cursor: pointer;transition: all .25s ease-in-out;
            }
            table tr:not(:first-child):hover{background-color: #ddd;}
            
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
                <td><a class="active" href="index.jsp"> Home </a> </td>
                <td><a href="manage_movie.jsp"> Movie Management </a></td>
                <td><a href ="create_customer.jsp">Member Management</a></td>
        
              
               
                <td>
                <table width='100%'>
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
         
            
      
             
        </div> 
        <h2> Welcome Admin </h2>
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<Member> memb = new ArrayList<Member>();
            memb = manager.getAllMembers();


        %>
        <br>
        <%            // admin choses to save customer record
            if (request.getParameter("update") != null && request.getParameter("submitted") != null) {
                Member m = manager.findMember(request.getParameter("ID"));

                //update method             
                manager.updateMember(m.getId(), request.getParameter("password"), request.getParameter("name"), request.getParameter("email"),
                        request.getParameter("phone"), request.getParameter("address"), request.getParameter("type"));


        %>
        <p>Details updated.</p>
        <% } //admin choses to delete customer record
        else if (request.getParameter("delete") != null && request.getParameter("submitted") != null) {
            
           Member m = manager.findMember(request.getParameter("ID"));

           manager.deleteMember(m.getId()); %>
        <p>The account has been deleted!</p>
        <p>Click<a href="viewCustomer.jsp"> here</a> to refresh page</p>

        <%

            }%>

        <!--                
        -->                <form  method="POST" action="viewCustomer.jsp">
            <h2>Create Customer Record:</h2>
            <table class="customertable">

                <tr><td>Customer ID</td></tr>
                <tr><td><input type="text" name="ID" id="ID" readonly></td></tr>
                <tr><td>Password</td></tr>
                <tr><td><input type="text" name="password" id="pass" ></td></tr>
                <tr><td>Full name</td></tr>
                <tr><td><input type="text" name="name" id="name"></td></tr>
                <tr><td>Email</td></tr>
                <tr><td><input type="text" name="email" id="email"></td></tr>
                <tr><td>Phone</td></tr>
                <tr><td><input type="text" name="phone" id="phone"></td></tr>
                <tr><td>Address</td></tr>
                <tr><td><input type="text" name="address" id="address" ></td></tr>
                <tr><td>Type</tr>
                <td> 
                    <select name="type" id="type">
                        <option value="Company">Company</option>
                        <option value="Individual">Individual</option>
                    </select>
                </td>
                <tr>
                    <td><input type="hidden" name="submitted" value="yes"></td>
                <tr><td></td><td><input type="submit" value="Update" name="update"></td></tr>
                <tr><td></td><td><input type="submit" value="Delete" name ="delete"></td></tr>
                </tr> 
            </table>
        </form>

        <table id="table" border="3" padding="100px"> 
            <tr>
                <th>ID</th>
                <th>Password</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Type</th>
            </tr> 
            <%    
                for (Member m : memb) {
            %>
            <form></form>
            <tr>
                <td><%=m.getId()%></td>
                <td><%=m.getPassword()%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getEmail()%></td>
                <td><%=m.getPhone()%></td>
                <td><%=m.getAddress()%></td>
                <td><%=m.getType()%></td>

            </tr> 

            <%
                }
            %> 
        </table>
        <script>

            var table = document.getElementById('table');

            for (var i = 1; i < table.rows.length; i++)
            {
                table.rows[i].onclick = function ()
                {
                    document.getElementById("ID").value = this.cells[0].innerHTML;
                    document.getElementById("pass").value = this.cells[1].innerHTML;
                    document.getElementById("name").value = this.cells[2].innerHTML;
                    document.getElementById("email").value = this.cells[3].innerHTML;
                    document.getElementById("phone").value = this.cells[4].innerHTML;
                    document.getElementById("address").value = this.cells[5].innerHTML;
                    document.getElementById("type").value = this.cells[6].innerHTML;
                };
            }

        </script>
    </body>
</html>
