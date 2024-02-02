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

       .delete-button,
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

.delete-button {
    background-color: #e74c3c;
}

    </style>
    <script>
        function confirmDelete(maVacXin) {
            var confirmDelete = confirm("Bạn có chắc chắn muốn xóa VacXin có mã " + maVacXin + " không?");
            if (confirmDelete) {
                // Thay đổi URL của fetch để gửi yêu cầu xóa đến servlet hoặc trang xử lý khác
                fetch('DeleteVacXin?maVacXin=' + maVacXin, {
                    method: 'POST'
                }).then(response => {
                    if (response.ok) {
                        // Xóa dòng trong bảng
                        var row = document.getElementById('row_' + maVacXin);
                        row.remove();
                    } else {
                        console.error('Failed to delete VacXin.');
                    }
                }).catch(error => {
                    console.error('Error:', error);
                });
            }
        }
    </script>
</head>
<body>
    <form action="ViewVacXin" method="post">
        <h1>Thông tin VacXin</h1>
        <hr>
        <% 
            ArrayList<VacXin> listVS = new ArrayList<>(); 
            VacXinBO vacXinBO = new VacXinBO();
            listVS = vacXinBO.getListVacXin();
            
            if (listVS != null && !listVS.isEmpty()) {
        %>
        <table>
            <tr>
                <th>Mã Vắc Xin</th>
                <th>Tên Vắc Xin</th>
                <th>Số Mũi</th>
                <th>Mô Tả</th>
                <th>Giá Vắc Xin</th>
                <th>Tên Hãng Sản Xuất</th>
                <th>Thao Tác</th>
            </tr> 
            <% 
                for (VacXin vacXin : listVS) {
            %>
            <tr id="row_<%= vacXin.getMaVacXin() %>">
                <td><%= vacXin.getMaVacXin() %></td>
                <td><%= vacXin.getTenVacXin() %></td>
                <td><%= vacXin.getSomui() %></td>
                <td><%= vacXin.getMota() %></td>            
                <td><%= vacXin.getGiaVacXin() %></td>
                <td><%= vacXin.getTenHangSX() %></td>
                <td>
                    <a class="view-button" href="VacXinDetails.jsp?maVacXin=<%= vacXin.getMaVacXin() %>">Xem</a>
                    <button class="delete-button" type="button" onclick="confirmDelete('<%= vacXin.getMaVacXin() %>')">Xóa</button>
                </td>
            </tr>
            <% 
                } 
            %>
        </table>
        <% 
            } else {
        %>
        <p>No Result is matched!</p>
        <% 
            }
        %>
        
        <br>
        <a class="logout-link" href="FormLogin.jsp">Back</a>
    </form>
</body>
</html>
