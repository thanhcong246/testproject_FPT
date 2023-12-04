package thongkevieclam.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import thongkevieclam.Dao.HomeDao;
import thongkevieclam.Dto.congviecDto;
import thongkevieclam.Entity.sinhvien;

@Service
public class HomeServiceImpl implements HomeServiceI {
	@Autowired
	HomeDao homeDao;

	@Override
	public List<sinhvien> showList() {
		return homeDao.showList();
	}
	
	@Override
	public List<congviecDto> showListCongViec() {
		return homeDao.showListCongViec();
	}

	@Override
	public List<sinhvien> search(String keyword) {
		 return homeDao.search(keyword);
	}

	@Override
	public List<congviecDto> searchCongViec(String keywordCongViec) {
		return homeDao.searchCongViec(keywordCongViec);
	}

}
