package thongkevieclam.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class sinhvienMapper implements RowMapper<sinhvien> {

	@Override
	public sinhvien mapRow(ResultSet rs, int rowNum) throws SQLException {
		sinhvien sinhvienObj = new sinhvien();
		sinhvienObj.setSocmnd(rs.getString("socmnd"));
		sinhvienObj.setHoten(rs.getString("hoten"));
		sinhvienObj.setEmail(rs.getString("email"));
		sinhvienObj.setSodt(rs.getString("sodt"));
		sinhvienObj.setDiachi(rs.getString("diachi"));

		return sinhvienObj;
	}

}
