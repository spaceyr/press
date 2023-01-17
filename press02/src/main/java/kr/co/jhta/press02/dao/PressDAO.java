package kr.co.jhta.press02.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.co.jhta.press02.dto.PressInfoDTO;

@Repository
@Mapper
public interface PressDAO {
	List<PressInfoDTO> getAll(Date from_date, Date to_date, String name, String party);
	//PressInfoDTO getDate(String date);
}
