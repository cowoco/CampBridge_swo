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
public class User_campDto {
	
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String email;
	private String address;
	private String gender;
	private String phone;
	private String local;
	private String m_img;
	private int mcode;
	private Timestamp mdate;
	


	
	
}
