package thongkevieclam.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class congviecDtoMapper implements RowMapper<congviecDto>{

	@Override
	public congviecDto mapRow(ResultSet rs, int rowNum) throws SQLException {
	      congviecDto congviec = new congviecDto();
	        congviec.setSocmnd(rs.getString("socmnd"));
	        congviec.setHoten(rs.getString("hoten"));
	        congviec.setManganh(rs.getInt("manganh"));
	        congviec.setMatruong(rs.getInt("matruong"));
	        congviec.setManganhcv(rs.getInt("manganhcv"));
	        congviec.setTencongty(rs.getString("tencongty"));
	        congviec.setThoigianlamviec(rs.getInt("thoigianlamviec"));

	        return congviec;
	}

}
