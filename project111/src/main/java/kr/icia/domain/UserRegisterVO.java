package kr.icia.domain;

import java.util.List;

public class UserRegisterVO {

	
	private String userid;
	private String userpw;
	private String userpw2;
	private String username;
	private boolean enabled;
	
	private int userbirth;
	private String useremail;
	private int userphone;
	
	private List<AuthVO> authList;
}
