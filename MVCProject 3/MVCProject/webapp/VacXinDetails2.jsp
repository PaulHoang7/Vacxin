<%@ page import="model.bean.VacXin" %>
<%@ page import="model.bo.VacXinBO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #3498db;
            text-align: center;
        }
        
         form {
            background-color: #fff;
            padding: 20px;
            border: 2px solid #3498db;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 10px;
            color: #3498db;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #3498db;
            border-radius: 3px;
            color: #3498db;
        }

        .view-button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
            margin-right: 5px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background-color: #4caf50;
            color: #fff;
            padding: 8px 12px;
            border-radius: 3px;
            margin-top: 10px;
        }

        p {
            text-align: center;
            margin-top: 10px;
            color: #e74c3c;
        }
         .logout-link {
            background-color:#4caf50;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
            margin-right: 5px;
        }


    </style>
</head>
<body>
    <% 
        String maVacXin = request.getParameter("maVacXin");
        VacXinBO vacXinBO = new VacXinBO();
        VacXin vacXin = vacXinBO.getVacXinById(maVacXin);

        if (vacXin != null) {
    %>
    <form action="UpdateVacXin" method="post">
        <h1>Thông tin VacXin</h1>
        <hr>

        <input type="hidden" name="mavacxin" value="<%= vacXin.getMaVacXin() %>">
        
        <label for="tenVacXin">Tên VacXin:</label>
        <input type="text" id="tenVacXin" name="tenvacxin" value="<%= vacXin.getTenVacXin() %>">

        <label for="somui">Số mũi:</label>
        <input type="text" id="somui" name="somui" value="<%= vacXin.getSomui() %>">

        <label for="mota">Mô tả:</label>
        <input type="text" id="mota" name="mota" value="<%= vacXin.getMota() %>">

        <label for="giaVacXin">Giá tiền VacXin:</label>
        <input type="text" id="giaVacXin" name="giavacxin" value="<%= vacXin.getGiaVacXin() %>">

        <label for="tenHangSX">Nơi sản xuất:</label>
        <input type="text" id="tenHangSX" name="tenhangvacxin" value="<%= vacXin.getTenHangSX() %>">

        
        <input class="view-button" type="submit" name="submit" value="Cập nhật" >
        <a class="logout-link" href="ViewVacXin.jsp">Back</a>
       
    <% } else { %>
        <p>VacXin không tồn tại.</p>
    <% } %>
    </form>
</body>
</html>
