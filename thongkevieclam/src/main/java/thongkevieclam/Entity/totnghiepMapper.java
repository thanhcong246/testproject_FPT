package thongkevieclam.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class totnghiepMapper implements RowMapper<totnghiep>{

	@Override
	public totnghiep mapRow(ResultSet rs, int rowNum) throws SQLException {
        totnghiep totnghiepObj = new totnghiep();
        totnghiepObj.setSocmnd(rs.getString("socmnd"));
        totnghiepObj.setMatruong(rs.getInt("matruong"));
        totnghiepObj.setManganh(rs.getInt("manganh"));
        totnghiepObj.setHetn(rs.getString("hetn"));
        totnghiepObj.setNgaytn(rs.getDate("ngaytn"));
        totnghiepObj.setLoaitn(rs.getString("loaitn"));

        return totnghiepObj;
	}

}
