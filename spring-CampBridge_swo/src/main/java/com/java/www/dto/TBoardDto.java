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
public class TBoardDto {
	
	
	private int t_bno;
	private String id;
	private String t_btitle;
	private String t_bcontent;
	private Timestamp t_bdate;
	private int t_bhit;
	private int t_bgroup;
	private int t_bstep;
	private int t_bindent;
	private String t_bfile;
	

}
