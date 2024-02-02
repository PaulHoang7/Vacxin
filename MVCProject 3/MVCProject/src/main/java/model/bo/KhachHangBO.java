package model.bo;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.KhachHang;
import model.dao.KhachHangDAO;

public class KhachHangBO{
	KhachHangDAO KhachHangDAO = new KhachHangDAO();
	public boolean InsertKHBO(KhachHang kh) throws SQLException {
		return KhachHangDAO.InsertKH(kh);
	}
	public ArrayList<KhachHang> getListKH() throws SQLException {
		return KhachHangDAO.getListKH();
	}
}