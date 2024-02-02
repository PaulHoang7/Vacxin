<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.KhachHang" %>
<%@ page import="model.bo.KhachHangBO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View VacXin</title>
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

        .container {
            margin: 0 auto;
            width: 80%;
            border: 2px solid #3498db;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #3498db;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        p {
            text-align: center;
            margin-top: 10px;
        }

        .logout-link {
            text-align: center;
            margin-top: 10px;
            display: block; /* Chuyển nút Back thành block để có thể căn chỉnh trên dưới */
            margin-bottom: 20px; /* Khoảng cách từ nút Back đến bảng */
            color: #4caf50;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thông Tin Khách Hàng</h1>
        <table>
            <tr>
                <th>Mã Khách Hàng</th>
                <th>Họ và Tên</th>
                <th>Số Điện Thoại</th>
                <th>Địa Chỉ</th>
                <th>Ngày Sinh</th>
                <th>Giới Tính</th>
            </tr>
            <% 
                KhachHangBO khachHangBO = new KhachHangBO();
                ArrayList<KhachHang> listKH = khachHangBO.getListKH();

                if (listKH != null && !listKH.isEmpty()) {
                    for (KhachHang khachHang : listKH) {
            %>
            <tr>
                <td><%= khachHang.getMaKH() %></td>
                <td><%= khachHang.getHoTenKH() %></td>
                <td><%= khachHang.getSoDienThoai() %></td>
                <td><%= khachHang.getDiachiKH() %></td>
                <td><%= khachHang.getNgaySinh() %></td>
                <td><%= khachHang.getGioiTinh() %></td>
            </tr>
            <% 
                    }
                } else {
            %>
            <tr>
                <td colspan="6">Không có dữ liệu khách hàng.</td>
            </tr>
            <% 
                }
            %>
        </table>
        <div>
            <a class="logout-link" href="Welcome.jsp">Back</a>
        </div>
    </div>
</body>
</html>
