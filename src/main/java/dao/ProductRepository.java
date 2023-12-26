package dao;
import java.util.ArrayList;
import dto.Product;


public class ProductRepository {
private ArrayList<Product> productList = new ArrayList<Product>();

	public ProductRepository() {
		Product top = new Product("PRL1004", "Dogs Polo Bear Shirt" , 14410);
		top.setDescription("ビビードでかわいいシャツ");
		top.setInstock("100");
		top.setProduct_cagetory("トップ");
		top.setProduct_color("빨강");
		top.setProduct_date("2023-11-30");
		
		Product outer = new Product();
			Product outer1 = new Product("PRL9665", "RALPH LAUREN", 21670);
			outer1.setDescription("柔らかく耐久性のあるコットン×ポリエステルフリースでつくられたパーカー");
			outer1.setInstock("100");
			outer1.setProduct_cagetory("アウター");
			outer1.setProduct_color("pink");
			outer1.setProduct_date(null);
					
						Product dogItem = new Product();
						Product dogItem1 = new Product ("PRL4872l", "LAURA ASHLEY フラワーリード" , 3650);
						dogItem1.setDescription("爽やかなブルーのアデリーン柄と可愛らしいピンクのバンチェッドロージズ柄のオシャレなリード。");
						dogItem1.setInstock("100");
						dogItem1.setProduct_cagetory("アイテム");
						dogItem1.setProduct_color("Skyblue");
						dogItem1.setProduct_date("2023-12-15");
			
		
		productList.add(top);
		productList.add(outer1);
		productList.add(dogItem1);
		
	}

	public ArrayList<Product> getAllProducts() {
		return productList;
	}
}

	

