<%@page import="model.bean.VacXin"%>
<%@page import="model.bo.VacXinBO"%>
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #3498db;
            padding: 10px;
            text-align: left;
        }

 
        th{
        color: #3498db;
        }
        p { 
            text-align: center;
            margin-top: 10px;
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
        .view-button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 8px 12px; /* Điều chỉnh giá trị padding để làm cho kích thước giống nhau */
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin: 5px; /* Thêm margin nếu cần thiết */
        }

        /* Added style for horizontal lines */
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
<form> 
    <h1>Chi Tiết VacXin</h1>
    <hr> <!-- Horizontal line added -->
    
    <% 
    	String x = request.getParameter("tieuchi");
        // Lấy mã VacXin từ request
        String maVacXin = request.getParameter("maVacXin");
        
        // Kiểm tra xem mã VacXin có tồn tại không
        if (maVacXin != null && !maVacXin.isEmpty()) {
            // Thực hiện lấy thông tin chi tiết từ cơ sở dữ liệu
            VacXinBO vacXinBO = new VacXinBO();
            VacXin vacXin = null;
            
            if ("TenVacXin".equals(x)) {
                vacXin = vacXinBO.getVacXinByName(maVacXin);
            } else if ("TenHangSX".equals(x)) {
                vacXin = vacXinBO.getVacXinByNoiSX(maVacXin);
            } else {
            	vacXin = vacXinBO.getVacXinById(maVacXin);
            }
            
            // Kiểm tra xem VacXin có tồn tại không
            if (vacXin != null) {
    %>
    
                <table>
                    <tr>
                        <th>Mã VacXin</th>
                        <td><%= vacXin.getMaVacXin() %></td>
                    </tr>
                    <tr>
                        <th>Tên VacXin</th>
                        <td><%= vacXin.getTenVacXin() %></td>
                    </tr>
                    <tr>
                        <th>Số Mũi</th>
                        <td><%= vacXin.getSomui() %></td>
                    </tr>
                    <tr>
                        <th>Mô Tả</th>
                        <td><%= vacXin.getMota() %></td>
                    </tr>
                    <tr>
                        <th>Giá VacXin</th>
                        <td><%= vacXin.getGiaVacXin() %></td>
                    </tr>
                    <tr>
                        <th>Tên Hãng Sản Xuất</th>
                        <td><%= vacXin.getTenHangSX() %></td>
                    </tr>
                </table>
                <a class="view-button" href="VacXinDetails2.jsp?maVacXin=<%= vacXin.getMaVacXin() %>">Sửa</a>
                <a class="logout-link" href="SearchVacXin.jsp">Back</a>
    <% 
            } else {
    %>
                <p style="text-align: center; color: red;">Không tìm thấy thông tin chi tiết cho <%= maVacXin %></p>
                <a class="logout-link" href="SearchVacXin.jsp">Back</a>
    <% 
            }
        } else {
    %>
            <p style="text-align: center; color: red;">Mã VacXin không hợp lệ</p>
    <% 
        }
        
    %>
    
    </form>
</body>
</html>
