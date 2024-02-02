package com.java.www.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@Data
public class KakaoDto {
	
	public Long id;
	public String connected_at;
	public Properties properties;        //객체-class생성
	public Kakao_account kakao_account;  //객체-class생성
	
	@Data
	public class Properties{
		public String nickname;
		public String profile_image;
		public String thumbnail_image;
		
	}
	
	@Data
	public class Kakao_account{
		public boolean profile_nickname_needs_agreement;
		public boolean profile_image_needs_agreement;
		public Profile profile;
		//설정안함으로 되어있음 - 생략가능
		public boolean name_needs_agreement;
		public String name;
		public boolean email_needs_agreement;
		public String email;
		public boolean birthyear_needs_agreement;
		public String birthday;
		public boolean gender_needs_agreement;
		public String gender;
		
		@Data
		public class Profile{
			public String nickname;
			public String thumbnail_image_url;
			public String profile_image_url;
			public boolean is_default_image;
		}
		
	}
	
	

}
