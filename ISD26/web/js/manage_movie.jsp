<%-- 
    Document   : manage_movie
    Created on : 01/06/2019, 10:39:33 PM
    Author     : qingwenxiao
--%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.dao.DBConnector"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Movies</title>
        <style>
			.margin
			{
				margin-left:1%;
			}
	</style>
    </head>
    <body>
        
        <table border="0" style="width:100%; background-color:lightskyblue">
            <tr>
                <th width="95%" align="center" style="font-size:36px; font-family: Calibri">Online Movie Store</th>
                <td style="background-color:#9932CC; font-family:Calibri; font-size:20px" align=center><a href="index.jsp" style="text-decoration:none"><font color="white" >Home</font></a></td>
				
			</tr>

        </table>
        
        <h1>Movies in stock</h1>
         <table style="width: 90%" align="center">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Duration</th>
                        <th>Director</th>
                        <th>Publish Date</th>
                        <th>Price</th>
                    </tr>
                   <%
                       Class.forName("org.apache.derby.jdbc.ClientDriver");
                       String url="jdbc:derby://localhost:1527/moviestoredb";
                       String username="group26";
                       String password="isd";
                       String query="select * from MOVIE";
                       Connection conn=DriverManager.getConnection(url,username,password);
                       Statement st=conn.createStatement();
                       ResultSet rs=st.executeQuery(query);
                       while(rs.next())
                       {
                   %>
                    <tr>
                        <td><%=rs.getString("MOVIEID")%></td>
                        <td><%=rs.getString("TITLE")%></td>
                        <td><%=rs.getString("CATEGORY")%></td>
                        <td><%=rs.getString("DESCRIPTION")%></td>
                        <td><%=rs.getString("DURATION")%></td>
                        <td><%=rs.getString("DIRECTOR")%></td>
                        <td><%=rs.getString("PUBLISHDATE")%></td>
                        <td><%=rs.getString("PRICE")%></td>
                    </tr>
                  <%}%>
                </table>
                <%conn.close();%>
        <br><br>
                    <p align="center">
                        <a href="update_movie.jsp"><button type="button">Add/Update/Delete</button></a>
                       
                        <a href="loginwelcome.jsp"><button type="button" class="margin">Back</button></a>
                    </p>    
                    
    </body>
</html>