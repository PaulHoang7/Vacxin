package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.VacXinDAO;

@WebServlet("/DeleteVacXin")
public class DeleteVacXin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy mã VacXin cần xóa từ request
        String maVacXin = request.getParameter("maVacXin");

        try {
            // Thực hiện xóa VacXin từ cơ sở dữ liệu
            VacXinDAO vacXinDAO = new VacXinDAO();
            boolean result = vacXinDAO.deleteVacXinById(maVacXin);

            if (result) {
                // Nếu xóa thành công, chuyển hướng đến trang danh sách VacXin

                // Thêm headers để ngăn chặn lưu trữ đệm
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
                response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                response.setDateHeader("Expires", 0); // Proxies.

                response.sendRedirect("ViewVacXin.jsp");
            } else {
                // Nếu xóa không thành công, có thể chuyển hướng đến trang thông báo lỗi hoặc trang khác
                response.sendRedirect("ErrorPage.jsp"); // Thay "ErrorPage.jsp" bằng trang bạn muốn chuyển hướng
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            e.printStackTrace();
            response.sendRedirect("ErrorPage.jsp"); // Chuyển hướng đến trang thông báo lỗi
        }
    }
}
