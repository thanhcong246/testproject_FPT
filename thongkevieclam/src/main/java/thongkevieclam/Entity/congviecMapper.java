package thongkevieclam.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class congviecMapper implements RowMapper<congviec> {

	@Override
	public congviec mapRow(ResultSet rs, int rowNum) throws SQLException {
		congviec congViec = new congviec();
		congViec.setSocmnd(rs.getString("socmnd"));
		congViec.setNgayvaocongty(rs.getDate("ngayvaocongty"));
		congViec.setManganh(rs.getInt("manganh"));
		congViec.setTencongviec(rs.getString("tencongviec"));
		congViec.setTencongty(rs.getString("tencongty"));
		congViec.setDiachicongty(rs.getString("diachicongty"));
		congViec.setThoigianlamviec(rs.getInt("thoigianlamviec"));

		return congViec;
	}

}
