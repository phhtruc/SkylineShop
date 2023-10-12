<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
	<div class="offcanvas__option">
		<div class="offcanvas__links">
			<a href="<c:url value='/dang-nhap'/>">Đăng nhập</a> <a href="#">FAQs</a>
		</div>
		<div class="offcanvas__top__hover">
			<span>Usd <i class="arrow_carrot-down"></i></span>
			<ul>
				<li>USD</li>
				<li>EUR</li>
				<li>USD</li>
			</ul>
		</div>
	</div>
	<div class="offcanvas__nav__option">
		<a href="#" class="search-switch"><img
			src="<c:url value ='/template/web/img/icon/search.png'/>" alt="" /></a>
		<a href="#"><img
			src="<c:url value ='/template/web/img/icon/heart.png'/>" alt="" /></a> <a
			href="#"><img
			src="<c:url value ='/template/web/img/icon/cart.png'/>" alt="" /> <span>0</span></a>
		<div class="price">$0.00</div>
	</div>
	<div id="mobile-menu-wrap"></div>
	<div class="offcanvas__text">
		<p>Miễn phí vận chuyển, hoàn trả trong 30 ngày hoặc đảm bảo hoàn
			tiền.</p>
	</div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-7">
					<div class="header__top__left">
						<p>Miễn phí vận chuyển, hoàn trả trong 30 ngày hoặc đảm bảo
							hoàn tiền.</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-5">
					<div class="header__top__right">
						<div class="header__top__links">
							<a href="<c:url value='/dang-nhap'/>">Đăng nhập</a> <a href="#">FAQs</a>
						</div>
						<div class="header__top__hover">
							<span>Usd <i class="arrow_carrot-down"></i></span>
							<ul>
								<li>USD</li>
								<li>EUR</li>
								<li>USD</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="header__logo">
					<a href="<c:url value='/trang-chu'/>"> <img
						src="<c:url value='/template/web/img/logo_skyline.png'/>" />
					</a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<c:set var="activePage" value="" />
					<%
					String requestUri = request.getRequestURI();
					if (requestUri.endsWith("/trang-chu")) {
						pageContext.setAttribute("activePage", "home");
					} else if (requestUri.endsWith("/shop")) {
						pageContext.setAttribute("activePage", "shop");
					} else if (requestUri.endsWith("/blog")) {
						pageContext.setAttribute("activePage", "blog");
					} else if (requestUri.endsWith("/contact")) {
						pageContext.setAttribute("activePage", "contact");
					}
					%>
					<ul>
						<li class="${activePage == 'home' ? 'active' : ''}"><a
							href="<c:url value='/trang-chu'/>">Trang Chủ</a></li>
						<li class="${activePage == 'shop' ? 'active' : ''}"><a
							href="<c:url value='/shop'/>">Cửa Hàng</a></li>
						<li><a href="<c:url value='/about'/>">Pages</a>
							<ul class="dropdown">
								<li><a href="<c:url value='/about'/>">Về chúng tôi</a></li>
								<li><a href="<c:url value='/shopping-cart'/>">Giỏ hàng</a></li>
								<li><a href="<c:url value='/checkout'/>">Thanh toán</a></li>
								<li><a href="<c:url value='/blog-details'/>">Chi tiết Blog</a></li>
							</ul></li>
						<li class="${activePage == 'blog' ? 'active' : ''}"><a
							href="<c:url value='/blog'/>">Blog</a></li>
						<li class="${activePage == 'contact' ? 'active' : ''}"><a
							href="<c:url value='/contact'/>">Liên Hệ</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3 col-md-3">
				<div class="header__nav__option">
					<a href="#" class="search-switch"><img
						src="<c:url value ='/template/web/img/icon/search.png'/>" alt="" /></a>
					<a href="#"><img
						src="<c:url value ='/template/web/img/icon/heart.png'/>" alt="" /></a>
					<a href="#"><img
						src="<c:url value ='/template/web/img/icon/cart.png'/>" alt="" />
						<span>0</span></a>
					<div class="price">$0.00</div>
				</div>
			</div>
		</div>
		<div class="canvas__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->