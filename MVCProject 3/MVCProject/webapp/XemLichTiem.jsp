<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kết Quả Tìm Kiếm Lịch Tiêm</title>
    <style>
        .logout-link {
            background-color:#4caf50;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
            display: block;
            width: fit-content;
            margin: 20px auto; /* Canh giữa theo chiều ngang */
        }
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #3498db;
            margin-bottom: 20px;
        }

        .table-container {
            background-color: #D3D3D3;
            width: 80%;
            margin: 20px auto;
            display: flex;
            justify-content: center;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #3498db;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h1>Kết Quả Tìm Kiếm Lịch Tiêm</h1>
    <div class="table-container ">
        <table>
            <thead>
                <tr>
                    <th>Tên Vắc Xin</th>
                    <th>Họ Tên Khách Hàng</th>
                    <th>Quê Quán</th>
                    <th>Ngày Tiêm</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Astra Zeneca</td>
                    <td>Nguyễn Phạm Phúc Tân</td>
                    <td>Quảng Trị</td>
                    <td>12/12/2023</td>
                </tr>
                <!-- Thêm các dòng dữ liệu khác tương tự -->
            </tbody>
        </table>
    </div>
    <div>
        <a class="logout-link" href="Welcome.jsp">Back</a>
    </div>
</body>
</html>
