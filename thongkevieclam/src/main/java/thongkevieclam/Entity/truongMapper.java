package thongkevieclam.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class truongMapper implements RowMapper<truong> {

	@Override
	public truong mapRow(ResultSet rs, int rowNum) throws SQLException {
		truong truongObj = new truong();
		truongObj.setMatruong(rs.getInt("matruong"));
		truongObj.setTentruong(rs.getString("tentruong"));
		truongObj.setDiachi(rs.getString("diachi"));
		truongObj.setSodt(rs.getString("sodt"));

		return truongObj;
	}

}
