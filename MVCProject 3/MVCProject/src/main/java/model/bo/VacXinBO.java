package model.bo;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.VacXin;
import model.dao.VacXinDAO;

public class VacXinBO {
	VacXinDAO VacXinDAO = new VacXinDAO();
	
	public boolean InsertBO(VacXin vx) throws SQLException {
		return VacXinDAO.InsertVS(vx);
	}
	
	public boolean UpdateVx(VacXin vx ) throws SQLException {
		// TODO Auto-generated method stub
		return VacXinDAO.UpdateVX(vx);
	}
	
	public ArrayList<VacXin> getListVacXin() throws SQLException {
		return VacXinDAO.getListVacXin();
	}
	
	public boolean deleteVacXinById(String maVacXin) {
		return false;
	}

    public VacXin getVacXinById(String MaVacXin) {
        return VacXinDAO.getVacXinById(MaVacXin);
    }
    
    public VacXin getVacXinByName(String Name) {
        return VacXinDAO.getVacXinByName(Name);
    }
    
    public VacXin getVacXinByNoiSX(String NoiSX) {
        return VacXinDAO.getVacXinByNoiSX(NoiSX);
    }

	
}
