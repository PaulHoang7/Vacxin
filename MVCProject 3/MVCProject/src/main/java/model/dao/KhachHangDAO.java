package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;


import model.bean.KhachHang;


public class KhachHangDAO {
    public static Connection getJDBCConnection() {
        final String url = "jdbc:mysql://localhost:3306/vacxin2";
        final String user = "root";
        final String password = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void main(String[] args) {
		Connection connection = getJDBCConnection();

		if (connection != null) {
			System.out.println("thanh cong");
		} else {
			System.out.println("that bai");
		}
	}

    public boolean InsertKH(KhachHang kh) throws SQLException {
        try (Connection con = getJDBCConnection();
             PreparedStatement sm = con.prepareStatement(
            "INSERT INTO customer (MaKH, HoTenKH, SoDienThoai, DiaChiKH, NgaySinh, GioiTinh) VALUES (?, ?, ?, ?, ?, ?)")) {
            sm.setString(1, kh.getMaKH());
            sm.setString(2, kh.getHoTenKH());
            sm.setInt(3, kh.getSoDienThoai());
            sm.setString(4, kh.getDiachiKH());
            sm.setDate(5, kh.getNgaySinh());
            sm.setString(6, kh.getGioiTinh());

            return sm.executeUpdate() > 0;
        }
    }

	public ArrayList<KhachHang> getListKH() throws SQLException {
		ArrayList<KhachHang> listVS = new ArrayList<>();
		try {
			Connection con = getJDBCConnection();
			Statement sm = con.createStatement();
			String sql = "SELECT * FROM customer";
			System.out.println(sql);
			ResultSet rs = sm.executeQuery(sql);
			while (rs.next()) {
				String MaKH = rs.getString("MaKH");
				String HoTenKH = rs.getString("HoTenKH");
				int SoDienThoai = rs.getInt("SoDienThoai");
				String DiaChiKH = rs.getString("DiaChiKH");
				Date NgaySinh = rs.getDate("NgaySinh");
				String GioiTinh = rs.getString("GioiTinh");

				KhachHang kh = new KhachHang(MaKH, HoTenKH, SoDienThoai,DiaChiKH, NgaySinh, GioiTinh);
				listVS.add(kh);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listVS;

	}
}
