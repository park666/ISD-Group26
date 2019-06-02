<%-- 
    Document   : manager_add
    Created on : 01/06/2019, 10:40:50 PM
    Author     : qingwenxiao
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.dao.DBConnector"%>
<%@page import="model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int random = (int)(Math.random() * 10000);
            String ran=String.valueOf(random);
            String id=request.getParameter("id");
            String title=request.getParameter("title");
            String category=request.getParameter("category");
            String description=request.getParameter("desc");
            String duration=request.getParameter("duration");
            String director=request.getParameter("director");
            String pubDt=request.getParameter("publishDate");
            String price=request.getParameter("price");
            
//            Movie m=new Movie("0",title,category,description,duration,director,pubDt,price);
            DBConnector dbc=new DBConnector();            
            DBManager db=new DBManager(dbc.openConnection());
//            db.addMovie("0",m.getTitle(),m.getCate(),m.getDesc(),m.getDur()m.getDirector(),m.getPubDt(),m.getPrice());

            if(request.getParameter("add")!=null)
            {
                db.addMovie(ran,title,category,description,duration,director,pubDt,price);
            }
            else if(request.getParameter("update")!=null)
            {
                db.updateMovie(id, title, category, description, duration, director, pubDt, price);
            }
            else if(request.getParameter("delete")!=null)
            {
                db.deleteMovie(title);
            }
            response.sendRedirect("manage_movie.jsp");
            dbc.closeConnection();
        %>
    </body>
</html>
