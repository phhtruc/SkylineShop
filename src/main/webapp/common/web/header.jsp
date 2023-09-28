<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!-- Page Preloder -->
<!-- <div id="preloder">
      <div class="loader"></div>
    </div> -->

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
      <div class="offcanvas__option">
        <div class="offcanvas__links">
          <a href="<c:url value='/dang-nhap'/>">Đăng nhập</a>
          <a href="#">FAQs</a>
        </div>
        <div class="offcanvas__top__hover">
          <span>Usd <i class="arrow_carrot-down"></i></span>
          <ul>
            <li>USD</li>
            <li>VND</li>
          </ul>
        </div>
      </div>
      <div class="offcanvas__nav__option">
        <a href="#" class="search-switch"
          ><img src="template/web/img/icon/search.png" alt=""
        /></a>
        <a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
        <a href="<c:url value='/shopping-cart'/>"
          ><img src="template/web/img/icon/cart.png" alt="" /> <span>0</span></a
        >
        <div class="price">$0.00</div>
      </div>
      <div id="mobile-menu-wrap"></div>
      <div class="offcanvas__text">
        <p>
          Miễn phí vận chuyển, hoàn trả trong 30 ngày hoặc đảm bảo hoàn tiền.
        </p>
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
                <p>
                  Miễn phí vận chuyển, hoàn trả trong 30 ngày hoặc đảm bảo hoàn
                  tiền.
                </p>
              </div>
            </div>
            <div class="col-lg-6 col-md-5">
              <div class="header__top__right">
                <div class="header__top__links">
                  <a href=<c:url value='/dang-nhap'/>>Đăng nhập</a>
                  <a href="#">FAQs</a>
                </div>
                <div class="header__top__hover">
                  <span>Usd <i class="arrow_carrot-down"></i></span>
                  <ul>
                    <li>USD</li>
                    <li>VND</li>
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
              <a href=<c:url value='/trang-chu'/>
                ><img src="template/web/img/logo_skyline.png" alt=""
              /></a>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <nav class="header__menu mobile-menu">
              <ul>
                <li class="active"><a href=<c:url value='/trang-chu'/>>Trang Chủ</a></li>
                <li><a href=<c:url value='/shop'/>>Cửa Hàng</a></li>
                <li>
                  <a href="#">Pages</a>
                  <ul class="dropdown">
                    <li><a href=<c:url value='/about'/>>Về Chúng Tôi</a></li>
                    <li><a href=<c:url value='/shopping-details'/>>Chi Tiết Sản Phẩm</a></li>
                    <li><a href=<c:url value='/gio-hang'/>>Giỏ Hàng</a></li>
                    <li><a href=<c:url value='/checkout'/>>Thanh Toán</a></li>
                    <li><a href=<c:url value='/blog-details'/>>Chi Tiết Blog</a></li>
                  </ul>
                </li>
                <li><a href=<c:url value='/blog'/>>Blog</a></li>
                <li><a href=<c:url value='/contact'/>>Liên Hệ</a></li>
              </ul>
            </nav>
          </div>
          <div class="col-lg-3 col-md-3">
            <div class="header__nav__option">
              <a href="#" class="search-switch"
                ><img src="template/web/img/icon/search.png" alt=""
              /></a>
              <a href="#"><img src="template/web/img/icon/heart.png" alt="" /></a>
              <a href=<c:url value='/gio-hang'/>
                ><img src="template/web/img/icon/cart.png" alt="" /> <span>0</span></a
              >
              <div class="price">$0.00</div>
            </div>
          </div>
        </div>
        <div class="canvas__open"><i class="fa fa-bars"></i></div>
      </div>
    </header>
    <!-- Header Section End -->