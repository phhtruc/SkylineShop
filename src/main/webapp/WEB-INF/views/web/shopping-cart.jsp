<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zxx">
  <head>
        <meta charset="UTF-8" />
    <meta name="description" content="Male_Fashion Template" />
    <meta name="keywords" content="Male_Fashion, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Skyline - Giỏ hàng</title>

    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <!-- font-awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- bootsrap 5 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <!-- Libraries Stylesheet -->
    <link href="template/web/lib/animate/animate.min.css" rel="stylesheet" />

    <!-- Css Styles -->
    <link rel="stylesheet" href="template/web/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="template/web/css/style.css" type="text/css" />
  </head>

  <body>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb__text">
              <h4>Giỏ Hàng</h4>
              <div class="breadcrumb__links">
                <a href="<c:url value='/trang-chu'/>">Trang Chủ</a>
                <a href="<c:url value='/shop'/>">Cửa Hàng</a>
                <span>Giỏ Hàng</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->
	
    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="shopping__cart__table">
              <table>
                <thead>
                  <tr>
                    <th>Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Tổng</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${Cart}" var="c">
                  <tr>
                    <td class="product__cart__item">
                      <div class="product__cart__item__pic">
                        <a href="<c:url value='/shop-details/${c.value.product.product_name}'/>" ><img style="width:90px" src="<c:url value='/template/web/images/${c.value.product.image }'/>" alt="" /></a>
                      </div>
                      <div class="product__cart__item__text">
                        <a href="<c:url value='/shop-details/${c.value.product.product_name}'/>" ><h6>${c.value.product.product_name}</h6></a>
                        <h5><fmt:formatNumber type="number" groupingUsed="true"
														value="${c.value.product.price}" /></h5>
                      </div>
                    </td>
                    <td class="quantity__item">
                      <div class="quantity">
                        <div class="pro-qty-2">
                        	<span class="fa fa-minus dec qtybtn edit-cart" data-product-id="${c.value.product.id_product}"></span>
                          		<input type="text" value="${c.value.quantity }" id="quantity-${c.value.product.id_product}"/>
                          	<span class="fa fa-plus inc qtybtn edit-cart" data-product-id="${c.value.product.id_product}"></span>
                        </div>
                      </div>
                    </td>
                    <td class="cart__price" id="cart-price-${c.value.product.id_product}"><fmt:formatNumber type="number" groupingUsed="true"
														value="${c.value.totalPrice }" /> VND</td>
                    <td class="cart__close"><a href="<c:url value='/delete-cart/${c.value.product.id_product }'/>"><i class="fa fa-close" ></i></a></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="continue__btn">
                  <a href="<c:url value='/shop'/>">Continue Shopping</a>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="continue__btn update__btn">
                  <a href="<c:url value='/shopping-cart'/>"><i class="fa fa-spinner"></i> Update cart</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="cart__discount">
              <h6>Discount codes</h6>
              <form action="#">
                <input type="text" placeholder="Coupon code" />
                <button type="submit">Apply</button>
              </form>
            </div>
            <div class="cart__total">
              <h6>Cart total</h6>
              <ul>    
                <li>Total<span class="cart-price"><fmt:formatNumber type="number" groupingUsed="true"
														value="${TotalPrice}" /> VND</span></li>
              </ul>
              <a href="<c:url value='/checkout'/>" class="primary-btn">Proceed to checkout</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Js Plugins -->
    <script src="template/web/js/jquery-3.3.1.min.js"></script>
    <script src="template/web/js/bootstrap.min.js"></script>
    <script src="template/web/js/jquery.nice-select.min.js"></script>
    <script src="template/web/js/jquery.nicescroll.min.js"></script>
    <script src="template/web/js/jquery.magnific-popup.min.js"></script>
    <script src="template/web/js/jquery.countdown.min.js"></script>
    <script src="template/web/js/jquery.slicknav.js"></script>
    <script src="template/web/js/mixitup.min.js"></script>
    <script src="template/web/js/owl.carousel.min.js"></script>
    <script src="template/web/lib/wow/wow.min.js"></script>
    <script src="template/web/lib/easing/easing.min.js"></script>
    <script src="template/web/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@latest/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		  $(".edit-cart").on("click", function() {
		    var productId = $(this).data("product-id");
		    var $itemPrice = $("#cart-price-" + productId);
		    var $cartSize = $("#cart-size");
		    var $cartPrice = $(".cart-price");
		    
		    var $quantityInput = $("#quantity-" + productId);
	        if ($quantityInput.length > 0) {
	            quantity = $quantityInput.val();
	        }
	        
		    var urlink="<c:url value='/edit-cart/'/>" + productId + "/" + quantity;
		    
		    $.ajax({
		      type: "GET",
		      url: urlink,
		      data : {
					quantity : quantity
				},
		      success: function(response) {
		    	 
		          var totalPrice = response.TotalPriceProduct;
		          var cartPrice = response.totalPrice;
		          var cartSize = response.cartSize;
		          
		    	  var formattedPrice = new Intl.NumberFormat('vi-VN').format(totalPrice);
		          formattedPrice += ' VND';
		          $itemPrice.html(formattedPrice);
		          
		          $cartSize.text(cartSize);
		          var cartFormattedPrice = new Intl.NumberFormat('vi-VN').format(cartPrice);
		          cartFormattedPrice += ' VND';
		          $cartPrice.text(cartFormattedPrice);
		          
		      },
		      error: function(error) {
		    	  
		      }
		    });
		  });
		});
	</script>
	<c:if test="${status == 1}">
	    <script>
	        Swal.fire({
	            title: "Giỏ hàng của bạn đang trống",
	            text: "Vui lòng thêm ít nhất 1 sản phẩm vào giỏ hàng trước khi thanh toán",
	            icon: "warning",
	            showCancelButton: true,
	            confirmButtonColor: "#3085d6",
	            cancelButtonColor: "#d33",
	            confirmButtonText: "Tiếp tục mua sắm",
	            cancelButtonText: "Đóng"
	        }).then((result) => {
	            if (result.isConfirmed) {
	                window.location.href = "<c:url value='/shop'/>";
	            }
	        });
	    </script>
	</c:if>
  </body>
</html>