package thongkevieclam.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import thongkevieclam.Dto.congviecDto;
import thongkevieclam.Entity.sinhvien;

@Service
public interface HomeServiceI {
	public List<sinhvien> showList();

	public List<congviecDto> showListCongViec();

	public List<sinhvien> search(String keyword);
	
	public List<congviecDto> searchCongViec(String keywordCongViec);
}
