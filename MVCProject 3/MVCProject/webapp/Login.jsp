<%@ page import="java.sql.*" %>
<%@ page import="java.io.*, java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.http.HttpSession" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
    </style>
</head>
<body>



<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://localhost:3306/vacxin2";
        String dbUser = "root";
        String dbPassword = "";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, dbUser, dbPassword);

        String sql = "SELECT * FROM userrole WHERE username=? AND password=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        //pstmt.setString(2, DigestUtils.sha256Hex(password)); // Hash password before querying
        pstmt.setString(2, password);

        rs = pstmt.executeQuery();

        if (rs.next()) {
            String userRole = rs.getString("Role");
            HttpSession newSession = request.getSession();
            newSession.setAttribute("userrole", userRole);

            if (userRole.equals("admin")) {
                response.sendRedirect("FormLogin.jsp");
            } else if (userRole.equals("customer")) {
                response.sendRedirect("LoginKH.jsp");
            } else {
                response.sendRedirect("error_page.jsp");
            }
        } else {
            response.sendRedirect("Login.jsp"); // Redirect back to login if login fails
        }
    } catch (ClassNotFoundException | SQLException e) {
        // Hiển thị thông báo lỗi trên trang web
        out.println("<p>An error occurred: " + e.getMessage() + "</p>");
        // Hoặc ghi log lỗi
        // Logger.getLogger(YourClassName.class.getName()).log(Level.SEVERE, "An error occurred", e);
    }
%>


</body>
</html>
