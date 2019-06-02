<%-- 
    Document   : create_customeraction
    Created on : May 30, 2019, 2:20:01 PM
    Author     : joshu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="model.*" %>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
               
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
    <jsp:include page="/ConnServlet" flush="true" />
    <jsp:useBean id="connserv" class="controller.ConnServlet" scope="application"></jsp:useBean>
        <body>

        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            String ID = request.getParameter("id");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String type = request.getParameter("type");
            String yes = request.getParameter("submitted");
            
        %>
         <%
             
           
                manager.addMember(ID, password, name, email, phone, address, type);
         %>
          <div class="navbar">
            <table width="100%">
                <tr>
                <td><h1 style='padding:20px'>OMS</h1></t1>
                <td><a class="active" href="#"> Home </a> </td>
                <td><a href="#"> Movies </a></td>
                <td><a href ='create_customer.jsp'> Member Management</a></td>
                
                <td>
                <table width='80%'  >
                    <td align='right'><a href ="logout.jsp" > <font color='maroon'><strong>Sign out</strong></font></a></td>
                    
                </table>
                
                </tr>
               </table>
            

                
        
         </div> 
                  

        <h1>Customer Details</h1>
        <p>ID : <%=ID%></p>
        <p>Password : <%=password%></p>
        <p>Name : <%=name%> </p>
        <p>Email : <%=email%></p>
        <p>Phone : <%=phone%></p>
        <p>Address : <%=address%></p>
        <p>Type : <%=type%> </p>

      
        <p>Click <a href="viewCustomer.jsp">here </a> to view all customer records</p>
    </body>
</html>
