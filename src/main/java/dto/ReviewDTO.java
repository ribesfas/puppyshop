package dto;

import java.io.Serializable;

public class ReviewDTO implements Serializable{
	private Integer review_number; //유저 아이디
	private String review_text;  // 게시글 제목
	private Integer review_star; //게시글 내용
	private String user_id; //글을 쓴 유저 
	private String review_date; //게시글 등록날짜
	private Integer review_product_id;
	private String review_emotion;
	
	public Integer getReview_number() {
		return review_number;
	}
	public void setReview_number(Integer review_number) {
		this.review_number = review_number;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	public Integer getReview_star() {
		return review_star;
	}
	public void setReview_star(int i) {
		this.review_star = i;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public Integer getReview_product_id() {
		return review_product_id;
	}
	public void setReview_product_id(Integer review_product_id) {
		this.review_product_id = review_product_id;
	}
	public String getReview_emotion() {
		return review_emotion;
	}
	public void setReview_emotion(String review_emotion) {
		this.review_emotion = review_emotion;
	}
}
