<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert</title>
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

        form {
            background-color: #fff;	
            padding: 20px;
            border: 3px solid #3498db; /* Increase border width */
            border-radius: 8px; /* Increase border radius */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #3498db;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input {
            width: calc(100% - 22px); /* Increase width and adjust padding */
            padding: 12px; /* Adjust padding */
            margin-top: 5px;
            margin-bottom: 10px;
            border: 2px solid #ccc; /* Increase border width */
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"],
                button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #3498db;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #2980b9;
        }

       a.logout-link {
            color: #4caf50;
            text-decoration: none;
            font-weight: bold;       
         }
    </style>
</head>
<body>
    <form action="InsertKhachHang" method="post">
        <h2>Nhập thông tin của bạn </h2>
          <div class="container">
        <table>
        <tr>
        <label> Mã khách hàng</label>
        <input type="text" size='40' name="makh" />

        <label>Họ và tên</label>
        <input type="text" size='40' name="hotenkh" />

        <label>Số điện thoại</label>
        <input type="text" size='40' name="sodienthoai" />

        <label>Đia chỉ</label>
        <input type="text" size='40' name="diachi" />

        <label>Ngày sinh</label>
        <input type="date" name="ngaysinh">

        <label>Giới tính</label>
        <input type="text" size='40' name="gioitinh" />
        </tr>

        <tr align="center">
            <td colspan="2">
        <input type="submit" name="submit" value="Cập nhật" >
        <input type="reset" value="Reset" >
        <br>
        <a class="logout-link" href="FormLogin.jsp">Back</a>
        </td>
        </tr>
        </table>
        </div>
    </form>
</body>
</html>
