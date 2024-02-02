package model.bean;

public class VacXin {
	private String MaVacXin;
	private String TenVacXin;
	private int Somui;
	private String Mota;
	private int GiaVacXin;
	private String TenHangSX;
	public String getMaVacXin() {
		return MaVacXin;
	}
	public void setMaVacXin(String maVacXin) {
		MaVacXin = maVacXin;
	}
	public String getTenVacXin() {
		return TenVacXin;
	}
	public void setTenVacXin(String tenVacXin) {
		TenVacXin = tenVacXin;
	}
	public int getSomui() {
		return Somui;
	}
	public void setSomui(int somui) {
		Somui = somui;
	}
	public String getMota() {
		return Mota;
	}
	public void setMota(String mota) {
		Mota = mota;
	}
	public int getGiaVacXin() {
		return GiaVacXin;
	}
	public void setGiaVacXin(int giaVacXin) {
		GiaVacXin = giaVacXin;
	}
	public String getTenHangSX() {
		return TenHangSX;
	}
	public void setTenHangSX(String tenHangSX) {
		TenHangSX = tenHangSX;
	}
	public VacXin(String maVacXin, String tenVacXin, int somui, String mota, int giaVacXin, String tenHangSX) {
		super();
		MaVacXin = maVacXin;
		TenVacXin = tenVacXin;
		Somui = somui;
		Mota = mota;
		GiaVacXin = giaVacXin;
		TenHangSX = tenHangSX;
	}
	
	@Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;

        VacXin vacxin = (VacXin) obj;

        if (!MaVacXin.equals(vacxin.MaVacXin)) return false;
        return TenVacXin.equals(vacxin.TenVacXin);
    }

    @Override
    public int hashCode() {
        int result = MaVacXin.hashCode();
        result = 31 * result + TenVacXin.hashCode();
        return result;
    }
}
