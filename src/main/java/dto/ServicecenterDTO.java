package dto;

import java.io.Serializable;

public class ServicecenterDTO implements Serializable{

	private Integer service_number; //유저 아이디
	private String service_title;  // 게시글 제목
	private String service_text; //게시글 내용
	private String user_id; //글을 쓴 유저 
	private String service_date; //게시글 등록날짜
	private String service_note; 
	
	public Integer getService_number() {
		return service_number;
	}
	public void setService_number(Integer service_number) {
		this.service_number = service_number;
	}
	public String getService_title() {
		return service_title;
	}
	public void setService_title(String service_title) {
		this.service_title = service_title;
	}
	public String getService_text() {
		return service_text;
	}
	public void setService_text(String service_text) {
		this.service_text = service_text;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getService_date() {
		return service_date;
	}
	public void setService_date(String service_date) {
		this.service_date = service_date;
	}
	public String getService_note() {
		return service_note;
	}
	public void setService_note(String service_note) {
		this.service_note = service_note;
	}

}
