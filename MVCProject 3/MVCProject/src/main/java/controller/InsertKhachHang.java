	package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;
import model.bean.KhachHang;
import model.bo.KhachHangBO;

/**
 * Servlet implementation class InsertVacXin
 */
@WebServlet("/InsertKhachHang")
public class InsertKhachHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String Ma = request.getParameter("makh");
		String ten = request.getParameter("hotenkh");
		String so = request.getParameter("sodienthoai");
		String diachi = request.getParameter("diachi");
		String ngaysinh = request.getParameter("ngaysinh");
		String gioitinh =request.getParameter("gioitinh");
		LocalDate ngaySinh = LocalDate.parse(request.getParameter("ngaysinh"));

		// Chuyển java.time.LocalDate sang java.sql.Date
		java.sql.Date ngaySinhSQL = java.sql.Date.valueOf(ngaySinh);

		
		
		KhachHangBO KhachHangBO =new KhachHangBO();
		KhachHang kh = new KhachHang(Ma,ten,Integer.parseInt(so),diachi,ngaySinhSQL,gioitinh);
		try {
			KhachHangBO.InsertKHBO(kh);
			RequestDispatcher rd = request.getRequestDispatcher("/ViewKH.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
