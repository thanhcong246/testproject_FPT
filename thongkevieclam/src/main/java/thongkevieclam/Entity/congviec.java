package thongkevieclam.Entity;

import java.sql.Date;

public class congviec {
	private String socmnd;
	private Date ngayvaocongty;
	private int manganh;
	private String tencongviec;
	private String tencongty;
	private String diachicongty;
	private int thoigianlamviec;

	public congviec() {
	}

	public String getSocmnd() {
		return socmnd;
	}

	public void setSocmnd(String socmnd) {
		this.socmnd = socmnd;
	}

	public Date getNgayvaocongty() {
		return ngayvaocongty;
	}

	public void setNgayvaocongty(Date ngayvaocongty) {
		this.ngayvaocongty = ngayvaocongty;
	}

	public int getManganh() {
		return manganh;
	}

	public void setManganh(int manganh) {
		this.manganh = manganh;
	}

	public String getTencongviec() {
		return tencongviec;
	}

	public void setTencongviec(String tencongviec) {
		this.tencongviec = tencongviec;
	}

	public String getTencongty() {
		return tencongty;
	}

	public void setTencongty(String tencongty) {
		this.tencongty = tencongty;
	}

	public String getDiachicongty() {
		return diachicongty;
	}

	public void setDiachicongty(String diachicongty) {
		this.diachicongty = diachicongty;
	}

	public int getThoigianlamviec() {
		return thoigianlamviec;
	}

	public void setThoigianlamviec(int thoigianlamviec) {
		this.thoigianlamviec = thoigianlamviec;
	}

}
