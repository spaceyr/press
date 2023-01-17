package kr.co.jhta.press02.control;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.jhta.press02.dto.PressInfoDTO;
import kr.co.jhta.press02.service.PressService;

@Controller
@RequestMapping("/press")
public class PressController {
	
	@Autowired
	PressService service;
	
	@GetMapping("/search")
	public String list(Model model) {
//전체조회
		//List<PressInfoDTO> list = service.selectAll();
		//model.addAttribute("list", list);
		return "search";
	}
	
	@GetMapping("/searchOk")
	public String List(
			Model model,
	        @RequestParam(value ="from_date", defaultValue = "2005-01-01")Date from_date, 
	        @RequestParam(value ="to_date", defaultValue = "2025-12-31") Date to_date, 
	        @RequestParam(value ="name", defaultValue = "%") String name, 
	        @RequestParam(value ="party", defaultValue = "%") String party) {
	        
			List<PressInfoDTO> list = service.selectAll(from_date, to_date, name, party );
	        model.addAttribute("list", list);
	      
	        return "searchOk";
	    }
	}