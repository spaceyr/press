package kr.co.jhta.press02.dto;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PressInfoDTO {
	
	@Id // id pk부여
	private int id;
	
	@DateTimeFormat(pattern = "YYYY-mm-dd")
	private Date date;
	private Timestamp time;
	private String title;
	
}
