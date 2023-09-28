<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Male_Fashion Template" />
<meta name="keywords" content="Male_Fashion, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Skyline Shop - Cửa hàng</title>
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
							<a href="<c:url value='/trang-chu'/>">Trang Chủ</a> <span>Cửa Hàng</span>
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
							<form action="#">
								<input type="text" placeholder="Tìm kiếm..." />
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
													<li><a href="#">Nam (20)</a></li>
													<li><a href="#">Nữ (20)</a></li>
													<li><a href="#">Trẻ em (20)</a></li>
													<li><a href="#">Áo (20)</a></li>
													<li><a href="#">Quần (20)</a></li>
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
													<li><a href="#">Louis Vuitton</a></li>
													<li><a href="#">Chanel</a></li>
													<li><a href="#">Hermes</a></li>
													<li><a href="#">Gucci</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card wow fadeInUp" data-wow-delay="0.5s">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseThree">Lọc
											theo giá</a>
									</div>
									<div id="collapseThree" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__price">
												<ul>
													<li><a href="#">$0.00 - $50.00</a></li>
													<li><a href="#">$50.00 - $100.00</a></li>
													<li><a href="#">$100.00 - $150.00</a></li>
													<li><a href="#">$150.00 - $200.00</a></li>
													<li><a href="#">$200.00 - $250.00</a></li>
													<li><a href="#">250.00+</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card wow fadeInUp" data-wow-delay="0.5s">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseFour">Size</a>
									</div>
									<div id="collapseFour" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__size">
												<label for="xs">xs <input
													type="radio" id="xs" />
												</label> <label for="sm">s <input
													type="radio" id="sm" />
												</label> <label for="md">m <input
													type="radio" id="md" />
												</label> <label for="xl">xl <input
													type="radio" id="xl" />
												</label> <label for="2xl">2xl
													<input type="radio" id="2xl" />
												</label> <label for="xxl">xxl
													<input type="radio" id="xxl" />
												</label> <label for="3xl">3xl
													<input type="radio" id="3xl" />
												</label> <label for="4xl">4xl
													<input type="radio" id="4xl" />
												</label>
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
									<p>Hiển thị 1–12 trong 126 kết quả</p>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__right">
									<p>Sắp xếp theo giá:</p>
									<select>
										<option value="">Thấp đến Cao</option>
										<option value="">$0 - $55</option>
										<option value="">$55 - $100</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-2.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$67.24</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item sale wow fadeInUp"
								data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-3.jpg">
									<span class="label">Sale</span>
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$43.48</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-4.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$60.9</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item sale wow fadeInUp"
								data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-6.jpg">
									<span class="label">Sale</span>
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$98.49</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-7.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$49.66</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-8.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$26.28</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-9.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$67.24</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item sale wow fadeInUp"
								data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-10.jpg">
									<span class="label">Sale</span>
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$43.48</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-11.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$60.9</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item sale wow fadeInUp"
								data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-12.jpg">
									<span class="label">Sale</span>
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$98.49</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-13.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$49.66</h5>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item wow fadeInUp" data-wow-delay="0.5s">
								<div class="product__item__pic set-bg"
									data-setbg="template/web/img/product/product-14.jpg">
									<ul class="product__hover">
										<li><a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
										</li>
										<li><a href="#"><img
												src="template/web/img/icon/compare.png" alt="" /> <span>Compare</span></a></li>
										<li><a href="#"><img src="template/web/img/icon/search.png" alt="" /></a>
										</li>
										<li><a href="#"><img src="template/web/img/icon/cart.png" alt="" /></a>
										</li>
									</ul>
								</div>
								<div class="product__item__text">
									<a class="product-title" href="<c:url value='/shop-details'/>"><h6>Piqué
											Biker Jacket</h6></a>

									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<h5>$26.28</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="product__pagination">
								<a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a>
								<span>...</span> <a href="#">21</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->
</body>
</html>
