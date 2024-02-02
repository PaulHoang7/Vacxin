package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.VacXin;
import model.dao.VacXinDAO;

@WebServlet("/SearchVacXin")
public class SearchVacXin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String kq = request.getParameter("tieuchi");
        String s = request.getParameter("txtNhap");
        
        VacXinDAO vacXinDAO = new VacXinDAO();
        VacXin searchResults = null; // Thêm dòng này để khởi tạo biến searchResults

        // Đặt kết quả tìm kiếm vào thuộc tính "searchResults" của request
        request.setAttribute("searchResults", searchResults);

        // Chuyển hướng đến trang JSP để hiển thị kết quả
        request.getRequestDispatcher("VacXinDetails.jsp").forward(request, response);
    }
}
