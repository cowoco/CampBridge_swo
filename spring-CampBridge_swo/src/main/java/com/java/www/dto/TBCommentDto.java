package com.java.www.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class TBCommentDto {
	
	
	
	
	private int t_cno;
	private int t_bno;
	private String id;
	private String t_cpw;
	private String t_ccontent;
	private Timestamp t_cdate;
	
	
	
	
	

}
