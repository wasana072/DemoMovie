<%-- 
    Document   : updateMovie
    Created on : Jul 20, 2021, 9:16:04 AM
    Author     : User
    Objective  : to show movie detail & allow user to update the detail
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Movie" %>

<!-- get session object movie -->
<% Movie movie = (Movie) session.getAttribute("movie"); %>

<h2>แก้ไขข้อมูลหนัง</h2>
<form action="addNewMovieServlet">
    <label>ชื่อหนัง: </label>
    <input type="text" name="movieName" value="<%= movie.getMovieName() %>"><br/>
    <label>ประเภทหนัง: </label>
    <select name="movieType">
        <option value="ผี">ผี</option>
        <option value="ตลก">ตลก</option>
        <option value="รัก">รัก</option>
        <option value="สารคดี">สารคดี</option>
    </select><br/>
    <label>ผู้กำกับ: </label>
    <input type="text" name="movieDirector" value="<%= movie.getMovieDirector() %>"><br/>
    <input type="submit" value="แก้ไขข้อมูลหนัง"><br/><br/>
    <a href="saveToFirebase.jsp">save to Firebase</a>
</form>