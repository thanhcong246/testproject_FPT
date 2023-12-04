package thongkevieclam.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import thongkevieclam.Entity.nganh;
import thongkevieclam.Entity.sinhvien;
import thongkevieclam.Entity.totnghiep;
import thongkevieclam.Entity.truong;

@Service
public interface KhaiBaoServiceI {
	public List<truong> showListTruong();
	public List<nganh> showListNganh();
	public void createKhaiBao(sinhvien sVien, totnghiep tNghiep);
}
