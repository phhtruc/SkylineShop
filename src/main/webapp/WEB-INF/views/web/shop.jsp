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
<title>Skyline - Sản phẩm</title>

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
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Cửa Hàng</h4>
						<div class="breadcrumb__links">
							<a href="<c:url value='/trang-chu'/>">Trang Chủ</a> <span>Cửa
								Hàng</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop__sidebar">
						<div class="shop__sidebar__search">
							<form action="<c:url value='/shop/search' />" method="GET">
								<input type="text" name="search" placeholder="Tìm kiếm..." />
								<button type="submit">
									<span class="icon_search"></span>
								</button>
							</form>
						</div>
						<div class="shop__sidebar__accordion">
							<div class="accordion" id="accordionExample">
								<div class="card wow fadeInUp" data-wow-delay="0.5s">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseOne">Danh
											Mục</a>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__categories">
												<ul class="nice-scroll">
													<c:forEach items="${cate}" var="c">
														<li><a
															href="<c:url value='/shop?category=${c.cate_name}'/>">${c.cate_name}</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card wow fadeInUp" data-wow-delay="0.5s">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseTwo">Thương
											hiệu</a>
									</div>
									<div id="collapseTwo" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__brand">
												<ul>
													<c:forEach items="${brand}" var="b">
														<li><a
															href="<c:url value='/shop?brand=${b.brand_name}'/>">${b.brand_name}</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="shop__product__option">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__left">
									<p>Hiển thị ${paginate.start+1} - ${paginate.end} trong
										${totalData } kết quả</p>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__right">
									<p>Sắp xếp theo giá:</p>
									<select name="sort">
										<option value="">Giá</option>
										<option value="asc">Thấp đến Cao</option>
										<option value="desc">Cao đến Thấp</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">

						<c:choose>
							<c:when test="${empty product }">
								<p>Không có sản phẩm nào được tìm thấy</p>
							</c:when>
							<c:otherwise>
								<c:forEach items="${product}" var="p" varStatus="loop">
									<div class="col-lg-4 col-md-6 col-sm-6">
										<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
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
													<li><a
														href="#"><img
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
												<a class="product-title"
													href="<c:url value='/shop-details/${p.product_name}'/>"><h6>${p.product_name}</h6></a>


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
							</c:otherwise>
						</c:choose>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="product__pagination">
								<c:forEach var="item" begin="1" end="${paginate.totalPage}"
									varStatus="loop">
									<c:set var="categoryParam" value="${param.category}" />
									<c:set var="brandParam" value="${param.brand}" />
									<c:choose>
										<c:when test="${param.category != null}">
											<c:if test="${loop.index == paginate.currentPage}">
												<a
													href="<c:url value='/shop'>
                								<c:param name='category' value="${categoryParam}" />
                								<c:param name='page' value="${loop.index}" />
            									</c:url>"
													class="active">${loop.index}</a>
											</c:if>
											<c:if test="${loop.index != paginate.currentPage}">
												<a
													href="<c:url value='/shop'>
                								<c:param name='category' value="${categoryParam}"/>
                								<c:param name='page' value="${loop.index}" />
            									</c:url>">${loop.index}</a>
											</c:if>
										</c:when>
										<c:when test="${param.brand != null}">
											<c:if test="${loop.index == paginate.currentPage}">
												<a
													href="<c:url value='/shop'>
                        							<c:param name='brand' value="${brandParam}" />
                        							<c:param name='page' value="${loop.index}" />
                    								</c:url>"
													class="active">${loop.index}</a>
											</c:if>
											<c:if test="${loop.index != paginate.currentPage}">
												<a
													href="<c:url value='/shop'>
                        						<c:param name='brand' value="${brandParam}" />
                        						<c:param name='page' value="${loop.index}" />
                    							</c:url>">${loop.index}</a>
											</c:if>
										</c:when>
										<c:otherwise>
											<c:if test="${loop.index == paginate.currentPage}">
												<a href="<c:url value='/shop?page=${loop.index}'/>"
													class="active">${loop.index}</a>
											</c:if>
											<c:if test="${loop.index != paginate.currentPage}">
												<a href="<c:url value='/shop?page=${loop.index}'/>">${loop.index}</a>
											</c:if>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		  $(".add-to-cart").on("click", function() {
		    var productId = $(this).data("product-id");
		    var urlink="<c:url value='/add-cart/'/>" + productId;
		    $.ajax({
		      type: "GET",
		      url: urlink,
		      success: function(response) {
		        alert(response);
		        setTimeout(function() {
		          alert.close();
		        }, 3000);
		      },
		      error: function(error) {
		        console.error("Lỗi: " + error);
		      }
		    });
		  });
		});
	</script>
</body>
</html>
