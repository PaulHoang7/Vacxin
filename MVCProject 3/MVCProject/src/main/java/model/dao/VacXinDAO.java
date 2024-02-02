package model.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.VacXin;

public class VacXinDAO {
    //kẾT NỐI CƠ SỞ DỮ LIỆU 
	private static final String Connection = null;


	public static Connection getJDBCConnection() {
		final String url = "jdbc:mysql://localhost:3306/vacxin2";
		final String user = "root";
		final String password = "";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	
    // HÀM THÊM VACXIN
	public boolean InsertVS(VacXin vx) throws SQLException {
		try (Connection con = getJDBCConnection();
				PreparedStatement sm = con.prepareStatement(
						"INSERT INTO vacxin (MaVacXin, TenVacXin, SoMui, Mota, GiaVacXin, TenHangSX) VALUES (?, ?, ?, ?, ?, ?)")) {
			sm.setString(1, vx.getMaVacXin());
			sm.setString(2, vx.getTenVacXin());
			sm.setInt(3, vx.getSomui());
			sm.setString(4, vx.getMota());
			sm.setInt(5, vx.getGiaVacXin());
			sm.setString(6, vx.getTenHangSX());

			return sm.executeUpdate() > 0;
		}
	}
    // HÀM CẬP NHẬT VACXIN
	public boolean UpdateVX(VacXin vx) throws SQLException {
		try (Connection con = getJDBCConnection();
				PreparedStatement sm = con.prepareStatement(
						"UPDATE vacxin SET TenVacXin = ?, SoMui = ?, Mota = ?, GiaVacXin = ?, TenHangSX = ? WHERE MaVacXin = ?")) {
			sm.setString(6, vx.getMaVacXin());
			sm.setString(1, vx.getTenVacXin());
			sm.setInt(2, vx.getSomui());
			sm.setString(3, vx.getMota());
			sm.setInt(4, vx.getGiaVacXin());
			sm.setString(5, vx.getTenHangSX());
		
			return sm.executeUpdate() > 0;
		}
	}
    // HÀM VIEW VACXIN 
	public ArrayList<VacXin> getListVacXin() throws SQLException {
		ArrayList<VacXin> listVS = new ArrayList<>();
		try {
			Connection con = getJDBCConnection();
			Statement sm = con.createStatement();
			String sql = "SELECT * FROM vacxin";
			System.out.println(sql);
			ResultSet rs = sm.executeQuery(sql);
			while (rs.next()) {
				String MaVacXin = rs.getString("MaVacXin");
				String TenVacXin = rs.getString("TenVacXin");
				int SoMui = rs.getInt("SoMui");
				String MoTa = rs.getString("MoTa");
				int GiaBan = rs.getInt("GiaVacXin");
				String TenHangSX = rs.getString("TenHangSX");

				VacXin vacxin = new VacXin(MaVacXin, TenVacXin, SoMui, MoTa, GiaBan, TenHangSX);
				listVS.add(vacxin);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listVS;

	}

	// HÀM XOÁ
	public boolean deleteVacXinById(String MaVacXin) {
	    Connection connection = null;
	    PreparedStatement statement = null;

	    try {
	        connection = getJDBCConnection();

	        // Chuẩn bị câu lệnh SQL để xóa VacXin
	        String sql = "DELETE FROM vacxin WHERE MaVacXin = ?";
	        statement = connection.prepareStatement(sql);
	        statement.setString(1, MaVacXin);

	        // Thực hiện xóa và kiểm tra xem có bản ghi nào bị ảnh hưởng không
	        int rowsAffected = statement.executeUpdate();
	        return rowsAffected > 0; // Trả về true nếu có ít nhất một bản ghi bị ảnh hưởng

	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Xử lý ngoại lệ SQL
	        return false;

	    } finally {
	        // Đảm bảo đóng tài nguyên (PreparedStatement, Connection) để tránh rò rỉ tài nguyên
	        if (statement != null) {
	            try {
	                statement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if (connection != null) {
	            try {
	                connection.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}

    // HÀM SEARCH VỚI MÃ VACXIN	
	public VacXin getVacXinById(String MaVacXin) {
	        VacXin vacXin = null;
	        
	        try {
	        	Connection con = getJDBCConnection();
	            String sql = "SELECT * FROM vacxin WHERE MaVacXin = ?";
	            PreparedStatement sm = con.prepareStatement(sql);
	            sm.setString(1, MaVacXin);
	            ResultSet resultSet = sm.executeQuery();

	            if (resultSet.next()) {
	                // Nếu có dữ liệu, tạo đối tượng VacXin và set thông tin
	                vacXin = new VacXin(sql, sql, 0, sql, 0, sql);
	                vacXin.setMaVacXin(resultSet.getString("MaVacXin"));
	                vacXin.setTenVacXin(resultSet.getString("TenVacXin"));
	                vacXin.setSomui(resultSet.getInt("SoMui"));
	                vacXin.setMota(resultSet.getString("Mota"));
	                vacXin.setGiaVacXin(resultSet.getInt("GiaVacXin"));
	                vacXin.setTenHangSX(resultSet.getString("TenHangSX"));
	                // Các thuộc tính khác của VacXin
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Xử lý ngoại lệ SQL
	        } 

	        return vacXin;
	    }
	
	// HÀM SEARCH VỚI TÊN VACXIN
	public VacXin getVacXinByName(String Name) {
        VacXin vacXin = null;
        
        try {
        	Connection con = getJDBCConnection();
            String sql = "SELECT * FROM vacxin WHERE TenVacXin = ?";
            PreparedStatement sm = con.prepareStatement(sql);
            sm.setString(1, Name);
            ResultSet resultSet = sm.executeQuery();

            if (resultSet.next()) {
                // Nếu có dữ liệu, tạo đối tượng VacXin và set thông tin
                vacXin = new VacXin(sql, sql, 0, sql, 0, sql);
                vacXin.setMaVacXin(resultSet.getString("MaVacXin"));
                vacXin.setTenVacXin(resultSet.getString("TenVacXin"));
                vacXin.setSomui(resultSet.getInt("SoMui"));
                vacXin.setMota(resultSet.getString("Mota"));
                vacXin.setGiaVacXin(resultSet.getInt("GiaVacXin"));
                vacXin.setTenHangSX(resultSet.getString("TenHangSX"));
                // Các thuộc tính khác của VacXin
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ SQL
        } 

        return vacXin;
    }
	public VacXin getVacXinByNoiSX(String Name) {
        VacXin vacXin = null;
        
        try {
        	Connection con = getJDBCConnection();
            String sql = "SELECT * FROM vacxin WHERE TenHangSX LIKE ?";
            PreparedStatement sm = con.prepareStatement(sql);
            sm.setString(1, "%" + Name + "%"); 
            ResultSet resultSet = sm.executeQuery();

            while (resultSet.next()) {
                // Nếu có dữ liệu, tạo đối tượng VacXin và set thông tin
                vacXin = new VacXin(sql, sql, 0, sql, 0, sql);
                vacXin.setMaVacXin(resultSet.getString("MaVacXin"));
                vacXin.setTenVacXin(resultSet.getString("TenVacXin"));
                vacXin.setSomui(resultSet.getInt("SoMui"));
                vacXin.setMota(resultSet.getString("Mota"));
                vacXin.setGiaVacXin(resultSet.getInt("GiaVacXin"));
                vacXin.setTenHangSX(resultSet.getString("TenHangSX"));
                // Các thuộc tính khác của VacXin
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ SQL
        } 

        return vacXin;
    }
	}
