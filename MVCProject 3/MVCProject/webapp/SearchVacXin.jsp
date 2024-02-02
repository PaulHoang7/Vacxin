<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> Search </title>
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
            border: 3px solid #3498db;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #3498db;
            text-align: center; /* Đưa nội dung về giữa */
        }

        table {
            width: 100%;
            border: 0;
            margin-top: 50px;
        }

        td {
            padding: 30px;
        }

        input[type="radio"],
        input[type="text"] {
        width: 100%; /* Adjust the width as needed */
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 10px;
    border: 1px solid #000;
    border-radius: 3px;
    box-sizing: border-box;
        }
        
        input[type="submit"],
        input[type="reset"],
        button {
            display: block;
            width: 15%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #3498db;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="radio"] {
            width: auto;
            display: inline;
            margin-right: 10px;
        }

        input[type="radio"]:checked+label {
            color: #3498db;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        button:hover {
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
    <form action="SearchVacXin" method="post">
        <h2>Tìm kiếm VacXin</h2>
        <hr> <!-- Horizontal line added -->
        <table>
            <tr>
                <td><input type="radio" name="tieuchi" value="MaVacXin" checked> Mã VacXin </td>
                <td><input type="radio" name="tieuchi" value="TenVacXin"> Tên VacXin </td>
                <td><input type="radio" name="tieuchi" value="TenHangSX"> Nơi sản xuất VacXin </td>
            </tr>
            <tr>
                <td>Nhập vào thông tin </td>
                <td><input type='text' size='40' name='maVacXin' value="" /></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type='submit' name='searchValue'><input type='reset' value='Reset'>
                   <br>
                     <a class="logout-link" href="FormLogin.jsp">Back</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>



