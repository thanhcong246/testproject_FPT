package thongkevieclam.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import thongkevieclam.Entity.sinhvien;
import thongkevieclam.Entity.totnghiep;
import thongkevieclam.Service.KhaiBaoServiceI;

@Controller
@Validated
public class KhaiBaoController {
	public ModelAndView _mvIndex = new ModelAndView();
	@Autowired
	KhaiBaoServiceI khaiBaoServiceI;

	@GetMapping("/nhap_khai_bao")
	public ModelAndView khaiBaoForm() {
		_mvIndex.addObject("truongs", khaiBaoServiceI.showListTruong());
		_mvIndex.addObject("nghanhs", khaiBaoServiceI.showListNganh());
		_mvIndex.setViewName("/nhap_khai_bao");
		return _mvIndex;
	}

	@PostMapping("/nhap_khai_bao")
	public ModelAndView createKhaiBao(@Valid sinhvien sVien, @ModelAttribute("tNghiep") @Valid totnghiep tNghiep,
			BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			/* _mvIndex.addObject("errors", "Vui lòng nhập đầy đủ thông tin."); */
			_mvIndex.setViewName("/nhap_khai_bao");
			return _mvIndex;
		}

		khaiBaoServiceI.createKhaiBao(sVien, tNghiep);
		_mvIndex.setViewName("redirect:/");
		return _mvIndex;
	}
}
