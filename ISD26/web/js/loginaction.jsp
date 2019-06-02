<%-- 
    Document   : loginaction
    Created on : 27/05/2019, 11:59:42 PM
    Author     : qingwenxiao
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="model.dao.*"%>
<%@page import="controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*" import="java.sql.*"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            String ID = request.getParameter("loginID");
            String password = request.getParameter("loginpsw"); 
            String type =request.getParameter("type");
            if(type.equals("member")){
                Member memberLogin = manager.findMember(ID);
                
                if (memberLogin!= null) {
                    session.setAttribute("memberLogin", memberLogin);
                    
                    //Generate logID
                    Date date = new Date();
                    int key =(new Random()).nextInt(999999);
                    String logid = ""+key;
                    Logs log = new Logs(logid,"","","");
                   
                     manager.addLogin(logid,date.toString(),null,ID);
                    
                     
                     //set log attribute
                     session.setAttribute("log",log);
                    response.sendRedirect("memloginwelcome.jsp");                     
                }else{

                    session.setAttribute("existErr", "Student profile does not exist!");
                    //esponse.sendRedirect("loginwelcome.jsp");                               
                }
                       
              }else{
                 Staff staffLogin = manager.checkStaff(ID,password);
            
      
                 if(staffLogin != null){
                      session.setAttribute("staffLogin", staffLogin);
                      response.sendRedirect("loginwelcome.jsp");    
                }else{

                      session.setAttribute("existErr", "Student profile does not exist!");
                    
            }
            }
                
        %>
        
    </body>
</html>
