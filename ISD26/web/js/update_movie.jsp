<%-- 
    Document   : update_movie
    Created on : 01/06/2019, 10:46:40 PM
    Author     : qingwenxiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <head>
		<title>Update Movies</title>
		<style>
			.margin
			{
				margin-left:1%;
			}
		</style>
	</head>
        <title>add movies</title>
    </head>
    <body>
        <table border="0" style="width:100%; background-color:lightskyblue">
            <tr>
                <th width="95%" align="center" style="font-size:36px; font-family: Calibri">Online Movie Store</th>
                <td style="background-color:#9932CC; font-family:Calibri; font-size:20px" align=center><a href="index.jsp" style="text-decoration:none"><font color="white" >Home</font></a></td>
	    </tr>

        </table>
		
		
		<h1>Add/Update a movie into stock</h1>
		<form action="manager_add.jsp" method="post" class="margin">
                    <p>ID<input type="number" name="id" class="margin" placeholder="if update a movie"></p>
                    <p>Title<input type="text" name="title" class="margin">
                        <select name="category" class="margin">
                            <option value="" selected disable hidden>category</option>
                            <option value="action">Action</option>
                            <option value="advanture">Advanture</option>
                            <option value="comedy">Comedy</option>
                            <option value="crime">Crime</option>
                            <option value="drama">Drama</option>
                            <option value="fantasy">Fantasy</option>
                            <option value="historical">Historical</option>
                            <option value="horror">Horror</option>
                            <option value="romance">Romance</option>
                            <option value="sciencefiction">Science Fiction</option>
                            <option value="western">Western</option>
                        </select>
                    </p>
                    
                    <p>Duration<input type="number" name="duration" placeholder="minutes" class="margin"></p>
                    <p>Director<input type="name" name="director" placeholder="name" class="margin"></p>
                    <p>Publish Date<input type="month" name="publishDate" placeholder="DD/MM/YYYY" class="margin"></p>
                    <p>Description<textarea rows="4" cols="50" placeholder="No less than 50 words." name="desc" class="margin"></textarea></p>
                    <p>Price<input type="number" name="price" placeholder="in USD" class="margin"></p>
                 <br><br>
                     <input align="center" class="button" type="submit" value="Add" name="add"> 
                     <input align="center" class="button" type="submit" value="Update" name="update"> 
                     <input align="center" class="button" type="submit" value="Delete" name="delete">
		</form>
                <br><br>
                <p>Tip: when delete a movie, just input the title and click "delete".</p>
    </body>
</html>