	package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.VacXin;
import model.bo.VacXinBO;

/**
 * Servlet implementation class InsertVacXin
 */
@WebServlet("/InsertVacXin")
public class InsertVacXin extends HttpServlet {
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
		String Ma = request.getParameter("mavacxin");
		String ten = request.getParameter("tenvacxin");
		String somui = request.getParameter("somui");
		String mota = request.getParameter("mota");
		String gia = request.getParameter("giavacxin");
		String TenHangsx =request.getParameter("tenhangvacxin");
		
		
		VacXinBO vacXinBO =new VacXinBO();
		VacXin vx = new VacXin(Ma,ten,Integer.parseInt(somui),mota,Integer.parseInt(gia),TenHangsx);
		try {
			vacXinBO.InsertBO(vx);
			RequestDispatcher rd = request.getRequestDispatcher("/ViewVacXin.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
