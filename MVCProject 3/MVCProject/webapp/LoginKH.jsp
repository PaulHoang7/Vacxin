
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
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

        .container {
            text-align: center;
            margin-top: 20px;
            border: 2px solid #3498db; /* Đường viền màu xanh dương */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #3498db;
        }

        .link {
            display: block;
            padding: 10px;
            margin: 10px;
            text-decoration: none;
            background-color: #3498db;
            color: #fff;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .link:hover {
            background-color: #2980b9;
        }
        .logout-link {
            color: #4caf50;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Xin chọn yêu cầu</div>
        <a class="link" href="DKVacXin.jsp">1. Đăng kí tiêm vắc xin </a>
        <a class="link" href="XemLichTiem.jsp">2.Xem lịch tiêm vắc xin</a>
        <a class="logout-link" href="Welcome.jsp">Back</a>
    </div>
</body>
</html>

