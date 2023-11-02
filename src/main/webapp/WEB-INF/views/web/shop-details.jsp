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
<title>Skyline - Chi tiết sản phẩm</title>
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
<link rel="stylesheet"
	href="<c:url value='/template/web/lib/animate/animate.min.css'/>" />

<!-- Css Styles -->
<link rel="stylesheet"
	href="<c:url value='/template/web/css/bootstrap.min.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/font-awesome.min.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/elegant-icons.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/magnific-popup.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/nice-select.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/owl.carousel.min.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/slicknav.min.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/style.css'/>" type="text/css" />
</head>

<body>
	<!-- Shop Details Section Begin -->
	<section class="shop-details">
		<div class="product__details__pic">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__breadcrumb">
							<a href="<c:url value='/trang-chu'/>">Trang Chủ</a> <a
								href="<c:url value='/shop'/>">Cửa Hàng</a> <span>Chi Tiết
								Sản Phẩm</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<ul class="nav nav-tabs" role="tablist">
							<c:forEach items="${images }" var="i" varStatus="status">
								<li class="nav-item"><a
									class="nav-link ${status.first ? 'active' : ''  }"
									data-toggle="tab" href="#tabs-${status.index +1 }" role="tab">
										<div class="product__thumb__pic set-bg"
											data-setbg="<c:url value='/template/web/images/${i.image }'/>"></div>
								</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="col-lg-6 col-md-9">
						<div class="tab-content">
							<c:forEach items="${images }" var="i" varStatus="status">
								<div class="tab-pane ${status.first ? 'active' : ''  }"
									id="tabs-${status.index +1}" role="tabpanel">
									<div class="product__details__pic__item">
										<img src="<c:url value='/template/web/images/${i.image }'/>"
											alt="" />
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product__details__content">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-8">
						<div class="product__details__text">
							<h4>${product.product_name}</h4>
							<div class="rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i> <span> - 5 Reviews</span>
							</div>
							<h3>
								<fmt:formatNumber type="number" groupingUsed="true"
									value="${product.price}" />
								VND
							</h3>
							<p>${product.desc}</p>
							<div class="product__details__option">
								<div class="product__details__option__size">
									<span>Size:</span> <label for="xxl">xxl <input
										type="radio" id="xxl" />
									</label> <label class="active" for="xl">xl <input type="radio"
										id="xl" />
									</label> <label for="l">l <input type="radio" id="l" />
									</label> <label for="sm">s <input type="radio" id="sm" />
									</label>
								</div>
							</div>
							<div class="product__details__cart__option">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" value="1" />
									</div>
								</div>
								<a href="#" class="primary-btn">add to cart</a>
							</div>
							<div class="product__details__btns__option">
								<a href="#"><i class="fa fa-heart"></i> add to wishlist</a> <a
									href="#"><i class="fa fa-exchange"></i> Add To Compare</a>
							</div>
							<div class="product__details__last__option">
								<h5>
									<span>Guaranteed Safe Checkout</span>
								</h5>
								<img src=<c:url value="/template/web/img/shop-details/details-payment.png"/>
									alt="" />
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab">Description</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-6" role="tab">Customer Previews(5)</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-7" role="tab">Additional information</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">Nam tempus turpis at metus scelerisque
											placerat nulla deumantos solicitud felis. Pellentesque diam
											dolor, elementum etos lobortis des mollis ut risus. Sedcus
											faucibus an sullamcorper mattis drostique des commodo
											pharetras loremos.</p>
										<div class="product__details__tab__content__item">
											<h5>Products Infomation</h5>
											<p>A Pocket PC is a handheld computer, which features
												many of the same capabilities as a modern PC. These handy
												little devices allow individuals to retrieve and store
												e-mail messages, create a contact file, coordinate
												appointments, surf the internet, exchange text messages and
												more. Every product that is labeled as a Pocket PC must be
												accompanied with specific software to operate the unit and
												must feature a touchscreen and touchpad.</p>
											<p>As is the case with any new technology product, the
												cost of a Pocket PC was substantial during it’s early
												release. For approximately $700.00, consumers could purchase
												one of top-of-the-line Pocket PCs in 2003. These days,
												customers are finding that prices have become much more
												reasonable now that the newness is wearing off. For
												approximately $350.00, a new Pocket PC can now be purchased.
											</p>
										</div>
										<div class="product__details__tab__content__item">
											<h5>Material used</h5>
											<p>Polyester is deemed lower quality due to its none
												natural quality’s. Made from synthetic materials, not
												natural like wool. Polyester suits become creased easily and
												are known for not being breathable. Polyester suits tend to
												have a shine to them compared to wool and cotton suits, this
												can make the suit look cheap. The texture of velvet is
												luxurious and breathable. Velvet is a great choice for
												dinner party jacket and can be worn all year round.</p>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabs-6" role="tabpanel">
									<div class="product__details__tab__content">
										<div class="product__details__tab__content__item">
											<h5>Products Infomation</h5>
											<p>A Pocket PC is a handheld computer, which features
												many of the same capabilities as a modern PC. These handy
												little devices allow individuals to retrieve and store
												e-mail messages, create a contact file, coordinate
												appointments, surf the internet, exchange text messages and
												more. Every product that is labeled as a Pocket PC must be
												accompanied with specific software to operate the unit and
												must feature a touchscreen and touchpad.</p>
											<p>As is the case with any new technology product, the
												cost of a Pocket PC was substantial during it’s early
												release. For approximately $700.00, consumers could purchase
												one of top-of-the-line Pocket PCs in 2003. These days,
												customers are finding that prices have become much more
												reasonable now that the newness is wearing off. For
												approximately $350.00, a new Pocket PC can now be purchased.
											</p>
										</div>
										<div class="product__details__tab__content__item">
											<h5>Material used</h5>
											<p>Polyester is deemed lower quality due to its none
												natural quality’s. Made from synthetic materials, not
												natural like wool. Polyester suits become creased easily and
												are known for not being breathable. Polyester suits tend to
												have a shine to them compared to wool and cotton suits, this
												can make the suit look cheap. The texture of velvet is
												luxurious and breathable. Velvet is a great choice for
												dinner party jacket and can be worn all year round.</p>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabs-7" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">Nam tempus turpis at metus scelerisque
											placerat nulla deumantos solicitud felis. Pellentesque diam
											dolor, elementum etos lobortis des mollis ut risus. Sedcus
											faucibus an sullamcorper mattis drostique des commodo
											pharetras loremos.</p>
										<div class="product__details__tab__content__item">
											<h5>Products Infomation</h5>
											<p>A Pocket PC is a handheld computer, which features
												many of the same capabilities as a modern PC. These handy
												little devices allow individuals to retrieve and store
												e-mail messages, create a contact file, coordinate
												appointments, surf the internet, exchange text messages and
												more. Every product that is labeled as a Pocket PC must be
												accompanied with specific software to operate the unit and
												must feature a touchscreen and touchpad.</p>
											<p>As is the case with any new technology product, the
												cost of a Pocket PC was substantial during it’s early
												release. For approximately $700.00, consumers could purchase
												one of top-of-the-line Pocket PCs in 2003. These days,
												customers are finding that prices have become much more
												reasonable now that the newness is wearing off. For
												approximately $350.00, a new Pocket PC can now be purchased.
											</p>
										</div>
										<div class="product__details__tab__content__item">
											<h5>Material used</h5>
											<p>Polyester is deemed lower quality due to its none
												natural quality’s. Made from synthetic materials, not
												natural like wool. Polyester suits become creased easily and
												are known for not being breathable. Polyester suits tend to
												have a shine to them compared to wool and cotton suits, this
												can make the suit look cheap. The texture of velvet is
												luxurious and breathable. Velvet is a great choice for
												dinner party jacket and can be worn all year round.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Details Section End -->

	<!-- Related Section Begin -->
	<section class="related spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="related-title">Các Sản Phẩm Liên Quan</h3>
				</div>
			</div>
			<div class="row">
				<c:forEach items="${productByIdCate}" var="p">
					<div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
						<div class="product__item">
							<div class="product__item__pic " data-setbg="">
								<a href="<c:url value='/shop-details/${p.product_name}'/>">
									<img class="set-bg"
									src="<c:url value='/template/web/images/${p.image }'/>" />
								</a>
								<ul class="product__hover">
									<li><a href="#"><img
											src="<c:url value='/template/web/img/icon/heart.png'/>"
											alt="" /></a></li>
									<li><a href="#"><img
											src="<c:url value='/template/web/img/icon/compare.png'/>"
											alt="" /> <span>Compare</span></a></li>
									<li><a href="#"><img
											src="<c:url value='/template/web/img/icon/search.png'/>"
											alt="" /></a></li>
									<li><button class="add-to-cart"
															data-product-id="${p.id_product}">
															<img
																src="<c:url value='/template/web/img/icon/cart.png'/>"
																alt="" />
														</button><span>Add to cart</span></a>
									</li>
								</ul>
							</div>
							<div class="product__item__text">
								<a href="<c:url value='/shop-details/${p.product_name}'/>"><h6>${p.product_name}</h6></a>
								<div class="rating">
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<h5>
									<fmt:formatNumber type="number" groupingUsed="true"
										value="${p.price}" />
									VND
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Related Section End -->

	<!-- Js Plugins -->
	<script src="<c:url value='/template/web/js/jquery-3.3.1.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/js/jquery.nice-select.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/js/jquery.nicescroll.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/js/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/jquery.countdown.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/jquery.slicknav.js'/>"></script>
	<script src="<c:url value='/template/web/js/mixitup.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/main.js'/>"></script>
	<script src="<c:url value='/template/web/lib/easing/easing.min.js'/>"></script>
	<script src="<c:url value='/template/web/lib/wow/wow.min.js'/>"></script>
</body>
</html>
