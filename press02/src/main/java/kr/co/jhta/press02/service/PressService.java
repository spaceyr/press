package kr.co.jhta.press02.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jhta.press02.dao.PressDAO;
import kr.co.jhta.press02.dto.PressInfoDTO;

@Service
public class PressService {
	
	@Autowired
	private PressDAO dao;
	
	public List<PressInfoDTO> selectAll(Date from_date, Date to_date, String name, String party) {
		return dao.getAll(from_date, to_date, name, party);
	}
	
//	public PressInfoDTO selectDate(String press_date) {
//		return dao.getDate(press_date);
//	}
}
