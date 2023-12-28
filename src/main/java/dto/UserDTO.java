package dto;

import java.io.Serializable;

public class UserDTO implements Serializable{
	private String user_id; //유저 아이디
	private String user_password;  // 유저 비밀번호
	private String user_name; //유저 이름
	private String user_email; //유저 이메일
	private String user_phone; //상품 카테고리
	private String user_createdate; //유저 등록날짜
	private String user_gender; //유저 성별
	private String user_group; //유저그룹
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_createdate() {
		return user_createdate;
	}
	public void setUser_createdate(String user_createdate) {
		this.user_createdate = user_createdate;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_group() {
		return user_group;
	}
	public void setUser_group(String user_group) {
		this.user_group = user_group;
	}
}
