<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .welcome-container {
            background-color: #fff;
            padding: 20px;
            border: 2px solid #fff; /* Đường viền màu đen đậm */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .welcome-container h2 {
            color: #3498db;
        }

        .welcome-container p {
            color: #555;
        }

        .logout-link {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="welcome-container">
    <h2>CHÀO MỪNG BẠN ĐẾN VỚI TRANG WEB VAVXIN</h2>
    
    <div class="welcome-container">
        <p><a href="FormLogin.jsp" class="logout-link">Trang Chủ</a></p>
    </div>
    
    <div class="welcome-container">
        <p><a href="index.jsp" class="logout-link">Đăng Xuất</a></p>
    </div>

</body>
</html>
