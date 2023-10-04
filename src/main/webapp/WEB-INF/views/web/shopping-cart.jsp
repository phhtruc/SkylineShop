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
    <!-- Page Preloder 
    <div id="preloder">
      <div class="loader"></div>
    </div>-->

    <!-- Offcanvas Menu Begin -->
    
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    
    <!-- Header Section End -->

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
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="product__cart__item">
                      <div class="product__cart__item__pic">
                        <img src="template/web/img/shopping-cart/cart-1.jpg" alt="" />
                      </div>
                      <div class="product__cart__item__text">
                        <h6>T-shirt Contrast Pocket</h6>
                        <h5>$98.49</h5>
                      </div>
                    </td>
                    <td class="quantity__item">
                      <div class="quantity">
                        <div class="pro-qty-2">
                          <input type="text" value="1" />
                        </div>
                      </div>
                    </td>
                    <td class="cart__price">$ 30.00</td>
                    <td class="cart__close"><i class="fa fa-close"></i></td>
                  </tr>
                  <tr>
                    <td class="product__cart__item">
                      <div class="product__cart__item__pic">
                        <img src="template/web/img/shopping-cart/cart-2.jpg" alt="" />
                      </div>
                      <div class="product__cart__item__text">
                        <h6>Diagonal Textured Cap</h6>
                        <h5>$98.49</h5>
                      </div>
                    </td>
                    <td class="quantity__item">
                      <div class="quantity">
                        <div class="pro-qty-2">
                          <input type="text" value="1" />
                        </div>
                      </div>
                    </td>
                    <td class="cart__price">$ 32.50</td>
                    <td class="cart__close"><i class="fa fa-close"></i></td>
                  </tr>
                  <tr>
                    <td class="product__cart__item">
                      <div class="product__cart__item__pic">
                        <img src="template/web/img/shopping-cart/cart-3.jpg" alt="" />
                      </div>
                      <div class="product__cart__item__text">
                        <h6>Basic Flowing Scarf</h6>
                        <h5>$98.49</h5>
                      </div>
                    </td>
                    <td class="quantity__item">
                      <div class="quantity">
                        <div class="pro-qty-2">
                          <input type="text" value="1" />
                        </div>
                      </div>
                    </td>
                    <td class="cart__price">$ 47.00</td>
                    <td class="cart__close"><i class="fa fa-close"></i></td>
                  </tr>
                  <tr>
                    <td class="product__cart__item">
                      <div class="product__cart__item__pic">
                        <img src="template/web/img/shopping-cart/cart-4.jpg" alt="" />
                      </div>
                      <div class="product__cart__item__text">
                        <h6>Basic Flowing Scarf</h6>
                        <h5>$98.49</h5>
                      </div>
                    </td>
                    <td class="quantity__item">
                      <div class="quantity">
                        <div class="pro-qty-2">
                          <input type="text" value="1" />
                        </div>
                      </div>
                    </td>
                    <td class="cart__price">$ 30.00</td>
                    <td class="cart__close"><i class="fa fa-close"></i></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="continue__btn">
                  <a href="#">Continue Shopping</a>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="continue__btn update__btn">
                  <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
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
                <li>Subtotal <span>$ 169.50</span></li>
                <li>Total <span>$ 169.50</span></li>
              </ul>
              <a href="#" class="primary-btn">Proceed to checkout</a>
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
  </body>
</html>
