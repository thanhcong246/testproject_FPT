package thongkevieclam.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import thongkevieclam.Dto.congviecDto;
import thongkevieclam.Entity.sinhvien;
import thongkevieclam.Service.HomeServiceI;

@Controller
public class HomeController {
	@Autowired
	HomeServiceI homeServiceI;
	public ModelAndView _mIndex = new ModelAndView();

	@RequestMapping(value = { "/" })
	public ModelAndView Index() {
		_mIndex.addObject("sinhviens", homeServiceI.showList());
		_mIndex.setViewName("/index");
		return _mIndex;
	}
	
	@RequestMapping(value = { "/viec_lam" })
	public ModelAndView IndexViecLam() {
		_mIndex.addObject("congviec", homeServiceI.showListCongViec());
		_mIndex.setViewName("/seachViecLam");
		return _mIndex;
	}
	
	@RequestMapping(value = { "/search" })
	public ModelAndView search(@RequestParam(value = "keyword", required = false) String keyword) {
	    List<sinhvien> searchResult = homeServiceI.search(keyword);
	    ModelAndView modelAndView = new ModelAndView("/index");
	    modelAndView.addObject("sinhviens", searchResult);
	    return modelAndView;
	}
	
	@RequestMapping(value = { "/searchCongViec" })
	public ModelAndView searchCongViec(@RequestParam(value = "keywordCongViec", required = false) String keywordCongViec) {
	    List<congviecDto> searchResult = homeServiceI.searchCongViec(keywordCongViec);
	    ModelAndView modelAndView = new ModelAndView("/seachViecLam");
	    modelAndView.addObject("congviec", searchResult);
	    return modelAndView;
	}
}
