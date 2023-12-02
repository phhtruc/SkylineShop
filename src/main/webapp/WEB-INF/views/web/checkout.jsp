<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api/order" />
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Male_Fashion Template" />
<meta name="keywords" content="Male_Fashion, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Skyline - Thanh toán</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet" />
<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- bootsrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- Libraries Stylesheet -->
<link href="template/web/lib/animate/animate.min.css" rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="template/web/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/elegant-icons.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/nice-select.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/slicknav.min.css"
	type="text/css" />
<link rel="stylesheet" href="template/web/css/style.css" type="text/css" />

<style>
.checkout_radio  .form_radio {
	border-bottom: solid 1px rgb(192, 192, 192);
}

.checkout_radio  .form_radio img {
	width: 13%;
	float: right;
}
</style>
</head>

<body>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Check Out</h4>
						<div class="breadcrumb__links">
							<a href="<c:url value='/trang-chu'/>">Trang Chủ</a> <a
								href="<c:url value='/shop'/>">Cửa Hàng</a> <span>Thanh
								Toán</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
               <form id="formSubmit">
				<div class="row">
					
						<div class="col-lg-7 col-md-6 col-12">
							<h6 class="coupon__code">
								<span class="icon_tag_alt"></span> Bạn đã có mã giảm giá ? <a
									href="#">Nhấn vào đây</a> để nhập mã của bạn
							</h6>
							<h6 class="checkout__title">Chi tiết thanh toán</h6>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Họ và Tên<span>*</span>
										</p>
										<input type="text" name="name"/>
									</div>
								</div>
							</div>

							<div class="checkout__input">
								<p>
									Email<span>*</span>
								</p>
								<input type="text" name="email"/>
							</div>
							<div class="checkout__input">
								<p>
									Số điện thoại<span>*</span>
								</p>
								<input type="number" name="phone"/>
							</div>
							<div class="checkout__input">
								<p>
									Địa chỉ<span>*</span>
								</p>
								<input type="text" placeholder="Tên địa chỉ" name="address"/>

							</div>
							<div class="checkout__input">
								<p>
									Tỉnh/Thành Phố<span>*</span>
								</p>
								<input type="text" />
							</div>
							<div class="checkout__input">
								<p>
									Phường/Quận<span>*</span>
								</p>
								<input type="text" />
							</div>
							<c:if test="${voucherID != null}">
								<input type="hidden" name="voucher" value="voucherID">
							</c:if>


							<div class="checkout__input">
								<p>
									Ghi chú đặt hàng<span>*</span>
								</p>
								<textarea name="note" id="note" rows="4" cols="71" class="p-3" type="text" placeholder="Ghi chú gì đó cho người giao hàng (nếu có)."></textarea>
							</div>
						</div>
						<div class="col-lg-5 col-md-6 col-12">
							<div class="checkout__order">
								<h4 class="order__title">Đơn hàng của bạn</h4>
								<div class="ms-3 checkout__order__products ">
								Sản phẩm   <span class = "me-5">  Tổng </span> 
								</div>
								<ul class="checkout__total__products">
									<c:forEach items="${cart }" var="c" varStatus="loop">
										<li class = "list_checkout_order row">
										 <div class= "col-lg-8 col-md-9 col-8">
										
										 ${loop.index+1}.  <img alt="" src="<c:url value='/template/web/images/${c.value.product.image }'/>">
										 <span> ${c.value.product.product_name}</span>
										 <span> Số lượng: ${c.value.quantity}</span>
										 </div>
										  <div class= "col-lg-4 col-md-3 col-4">
										 <span class = "w-100"
											id="price"><fmt:formatNumber type="number" 
													groupingUsed="true" value="${c.value.totalPrice}" /> VND</span>
										 </div>
										</li>
									</c:forEach>
									
								</ul>
								<ul class="checkout__total__all">
									<li>Tổng <span><fmt:formatNumber type="number"
												groupingUsed="true" value="${totalPriceCart}" /> VND</span></li>
								</ul>
								<div class="checkout_radio">
									<div class="form_radio form-check p-2 py-3 ms-4 border-bottom">
										<input class="form-check-input " type="radio"
											name="flexRadioDefault" id="flexRadioDefault1"
											value="flexRadioDefault1" checked> <label
											class="form-check-label " for="flexRadioDefault1">
											Thanh toán qua VNPAY-QR </label> <img
											style="width: 10%; float: right" class="me-1 pb-2" alt=""
											src="template/web/img/Icon-VNPAY-QR.webp">
									</div>
									<div class="form_radio form-check p-2 py-3 ms-4 border-bottom">
										<input class="form-check-input " type="radio"
											name="flexRadioDefault" id="flexRadioDefault2"
											value="flexRadioDefault2"> <label
											class="form-check-label " for="flexRadioDefault3">
											Thanh toán khi nhận hàng </label> <img
											style="width: 10%; float: right" class="me-1 pb-2" alt=""
											src="template/web/img/money_pay.jpg">

									</div>
									<button id="checkout" class="btn btn-dark mt-4 site-btn">Thanh
										toán</button>
								</div>
							</div>
						</div>
					
				</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

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
	<script>
		$('#checkout').click(function (e) {
		    e.preventDefault();
		    var data = {};
	        var formData = $('#formSubmit').serializeArray();// muốn lấy được tất cả giá trị thì trên mỗi value phải có name
	        
	        $.each(formData, function (i, v) {
	            data[""+v.name+""] = v.value;
	        });
	        //data["content"] = editor.getData();
	        
	        	$.ajax({
		            url: '${APIurl}',
		            type: 'POST',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            dataType: 'json',
		            success: function (result) {
		                console.log(result);
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
	
		    var totalPrice = ${totalPriceCart};
		    var integerValue = parseInt(totalPrice, 10);
	
		    // Lấy giá trị của trường radio được chọn
		    var paymentMethod = document.querySelector('input[name="flexRadioDefault"]:checked').value;
	
		    // Nếu người dùng chọn thanh toán qua VNPAY-QR, hãy chuyển hướng người dùng đến trang thanh toán của Vnpay
		    if (paymentMethod === "flexRadioDefault1") {
		        window.location.href = "/SkylineShop/pay?price=" + integerValue;
		    }
	
		    // Nếu người dùng chọn thanh toán khi nhận hàng, hãy chuyển hướng người dùng đến trang đơn hàng
		    else if (paymentMethod === "flexRadioDefault2") {

		    	Swal.fire({
		    		title: "Thông báo",
	                text: "Đơn hàng của bạn đã được đặt thành công, xem chi tiết tại đơn hàng của tôi.",
	                icon: "success",
	                confirmButtonColor: "#3085d6",
		        }).then((result) => {
		            if (result.isConfirmed) {
		                window.location.href = "<c:url value='/trangchu'/>";
		            }
		        });
		    }
		});
	</script>
</body>
</html>
