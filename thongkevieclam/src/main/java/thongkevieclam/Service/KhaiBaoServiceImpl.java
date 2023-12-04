package thongkevieclam.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import thongkevieclam.Dao.KhaiBaoDao;
import thongkevieclam.Entity.nganh;
import thongkevieclam.Entity.sinhvien;
import thongkevieclam.Entity.totnghiep;
import thongkevieclam.Entity.truong;

@Service
public class KhaiBaoServiceImpl implements KhaiBaoServiceI {

	@Autowired
	KhaiBaoDao khaiBaoDao;

	@Override
	public List<truong> showListTruong() {
		return khaiBaoDao.showListTruong();
	}

	@Override
	public List<nganh> showListNganh() {
		return khaiBaoDao.showListNganh();
	}

	@Override
	public void createKhaiBao(sinhvien sVien, totnghiep tNghiep) {
		khaiBaoDao.createKhaiBao(sVien, tNghiep);
	}

}
