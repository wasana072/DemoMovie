<%-- 
    Document   : addNewMovie
    Created on : Jul 20, 2021, 8:51:16 AM
    Author     : User
    Objective  : to add new movie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2 style="color:blue;">เพิ่มหนัง</h2>
<form action="addNewMovieServlet">
    <label>ชื่อหนัง: </label>
    <input type="text" name="movieName"><br/>
    <label>ประเภทหนัง: </label>
    <select name="movieType">
        <option value="ผี">ผี</option>
        <option value="ตลก">ตลก</option>
        <option value="รัก">รัก</option>
        <option value="สารคดี">สารคดี</option>
        <option value="ไซไฟ">ไซไฟ</option>
    </select><br/>
    <label>ผู้กำกับ: </label>
    <input type="text" name="movieDirector"><br/>
    <input type="submit" value="เพิ่มหนัง">
</form>
