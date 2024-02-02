package model.bean;

import java.sql.Date;

public class KhachHang {
	private String MaKH;
	private String HoTenKH;
	private int SoDienThoai;
	private String DiachiKH;
	private Date NgaySinh;
	private String GioiTinh;
	public String getMaKH() {
		return MaKH;
	}
	public void setMaKH(String maKH) {
		MaKH = maKH;
	}
	public String getHoTenKH() {
		return HoTenKH;
	}
	public void setHoTenKH(String hoTenKH) {
		HoTenKH = hoTenKH;
	}
	public int getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(int soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getDiachiKH() {
		return DiachiKH;
	}
	public void setDiachiKH(String diachiKH) {
		DiachiKH = diachiKH;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public KhachHang(String maKH, String hoTenKH, int i, String diachiKH, Date ngaySinhSQL,
			String gioiTinh) {
		super();
		MaKH = maKH;
		HoTenKH = hoTenKH;
		SoDienThoai = i;
		DiachiKH = diachiKH;
		NgaySinh = ngaySinhSQL;
		GioiTinh = gioiTinh;
	}
	
	public KhachHang() {
		
	}
}
