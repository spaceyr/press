package kr.co.jhta.press02.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class SpeakerListDTO {
	@Id
	private int id;
	private String name;
	private String party;
	
	@JoinColumn(name="press_id")//joincolumn = fk부여
	private String press_id;
}
