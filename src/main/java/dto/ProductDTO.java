package dto;
import java.io.Serializable;

public class ProductDTO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5825055943154466910L;
	private Integer product_id; //상품 아이디
	private String product_date;  // 상품 날짜
	private String product_name; //상품 이름
	private Integer price; //상품 가격
	private String product_cagetory; //상품 카테고리
	private String description; //상품 설명
	private String instock; //상품 재고

	private String product_color; //상품 컬러
	private String product_size; //상품 사이즈
	private String product_img; //상품 이미지
	private String product_note; //비고
	
	
	public String getProduct_size() {
		return product_size;
	}


	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}


	public String getProduct_img() {
		return product_img;
	}


	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}


	public String getProduct_note() {
		return product_note;
	}


	public void setProduct_note(String product_note) {
		this.product_note = product_note;
	}

	
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ProductDTO(Integer product_id, String product_name, Integer price) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.price = price;
	}


	public Integer getProduct_id() {
		return product_id;
	}


	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}


	public String getProduct_date() {
		return product_date;
	}


	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public String getProduct_cagetory() {
		return product_cagetory;
	}


	public void setProduct_cagetory(String product_cagetory) {
		this.product_cagetory = product_cagetory;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getInstock() {
		return instock;
	}


	public void setInstock(String instock) {
		this.instock = instock;
	}


	public String getProduct_color() {
		return product_color;
	}


	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	
	
	
	
	
}
