<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.VacXin" %>
<%@ page import="model.bo.VacXinBO" %>
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
        }
        .logout-link {
            color: #4caf50;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
            }
    </style>
</head>
<body>
    <form action="XemLichTiem.jsp" method="post">
        <h1> Thông tin VacXin</h1>
        <% 
            ArrayList<VacXin> listVS = new ArrayList<>(); 
        	VacXinBO vacXinBO = new VacXinBO();
        	listVS = vacXinBO.getListVacXin();
            
            if (listVS != null && !listVS.isEmpty()) {
        %>
        <table>
            <tr>
                <th> Mã Vắc Xin </th>
                <th> Tên Vắc Xin</th>
                <th> Mô Tả</th>
                <th> Đặt lịch hẹn</th>
                
            </tr> 
            <% 
                for (VacXin vacXin : listVS) {
            %>
            <tr>
                <td><%= vacXin.getMaVacXin() %></td>
                <td><%= vacXin.getTenVacXin() %></td>
                <td><%= vacXin.getMota() %></td>            
                <td><button type="submit" style="background-color: #3498db; color: #000; border-radius: 50%; width: 100px; height: 40px; border: 2px solid #000;">Đặt lịch</button>
                </td>
            </tr>
            <% 
                } 
            %>
        </table>
        <% 
            } else {
                // Hiển thị thông báo khi không có dữ liệu
        %>
        <p>No Result is matched!</p>
        <% 
            }
        %>
         <a class="logout-link" href="FormLogin.jsp">Back</a>
    </form>
</body>
</html>

