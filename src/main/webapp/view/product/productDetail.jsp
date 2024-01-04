<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.ProductDTO"%>

<!DOCTYPE html>
<html>
<head>
<%@ page import="dto.ProductDTO" %>
<%@ page import="dao.ProductDAO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>상품 상세 페이지</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>

<%@ include file="../../header2.jsp"%>
<%
String productIdParam = request.getParameter("product_id");
int productId = 1; // 기본값으로 1 설정

if (productIdParam != null && !productIdParam.isEmpty()) {
    productId = Integer.parseInt(productIdParam);
}

ProductDAO dao = new ProductDAO();
ProductDTO product = dao.getProductById(productId);
%>

	
	
  <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<%= product.getProduct_img() %>" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1"><%=product.getProduct_id()%></div><!-- -상품 아이디 -->
                        <h1 class="display-5 fw-bolder"><%= product.getProduct_name() %></h1><!-- --상품 이름 -->
                        <div class="fs-5 mb-5">
                            <span><%=product.getPrice()%></span>
                        </div>
                        <p class="lead"><%=product.getDescription()%></p><!-- --상품 설명 -->
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
                <hr>
                <%@ include file="../review/reviewList.jsp"%>
                <a href="../review/reviewWrite.jsp" class="button">글쓰기</a>
                
            </div>
                   
        </section>
        
 
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>