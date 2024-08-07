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
<title>Skyline Shop - Đăng nhập</title>

</head>

<body>
	<div class="login-form-wrapper container-wrapper">
		<form action="j_spring_security_check" method="POST" class="form-signin rounded-sm shadow">
			<div class="tab-content">
				<div id="login" class="container tab-pane active">
					<h2 class="text-center mb-4">Đăng Nhập</h2>
					<c:if test="${param.incorrectAccount != null}">
						<div class="alert alert-danger">Tài khoản hoặc mật khẩu không đúng</div>
					</c:if>
					<c:if test="${param.accessDenied != null}">
						<div class="alert alert-danger">Bạn không có quyền truy cập</div>
					</c:if>
					<c:if test="${not empty status}">
				    	<div class="alert alert-success">${status}</div>
					</c:if>
					<label for="loginEmail" class="sr-only">Email address</label>
					<input type="email" required class="form-control mb-4" placeholder="Email" name="j_username" />
					<label for="loginPassword" class="sr-only">Password</label>
					<input type="password" required class="form-control mb-4" placeholder="Mật khẩu" name="j_password" />
					<div class="one-line mb-2">
						<div class="checkbox">
							<label> 
								<input name="remember-me" type="checkbox" id="remember-me"/> Lưu mật khẩu
							</label>
						</div>
					</div>
					<button class="btn btn-lg btn-login btn-block mb-3" onclick="loginUser()">Đăng nhập</button>
					<div class="d-flex justify-content-center">
						<a class="" href="<c:url value='/quen-mat-khau'/>">Quên mật khẩu? </a> &nbsp;
						<a class="" href="<c:url value='/dang-ky'/>"> Bạn chưa có tài khoản</a>
					</div>
					<div class = "another-signin mt-4">
					     <p> <i>Hoặc đăng nhập bằng </i></p>
					     <div class = "row container d-flex justify-content-center gap-3">
					        <div class= "col container-as">
					        	<a href="https://www.facebook.com/dialog/oauth?client_id=1132561737721410&redirect_uri=http://localhost:8888/SkylineShop/login-facebook">
					           		<img alt="" src="template/web/img/login_fb.png">
					           		<span>FaceBook</span>
					           	</a>
					           	<!-- <a href="https://www.facebook.com/dialog/oauth?client_id=1132561737721410&redirect_uri=https://skyline-shop-e327475651af.herokuapp.com/login-facebook">
					           		<img alt="" src="template/web/img/login_fb.png">
					           		<span>FaceBook</span>
					           	</a> -->
					        </div>
					         <div class= "col container-as">


					         	<!-- <a style="width: 100%; height: 100%" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8888/SkylineShop/login-google&response_type=code
    &client_id=946928910591-a6uhbkq7ahh2nv3lnrvss0si8ll2pvo6.apps.googleusercontent.com&approval_prompt=force">
					           		<img alt="" src="template/web/img/login_google.png">
					           		<span>Google</span>
					           	</a> -->
					           	<a style="width: 100%; height: 100%" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=https://skyline-shop-e327475651af.herokuapp.com/login-google&response_type=code
    &client_id=946928910591-a6uhbkq7ahh2nv3lnrvss0si8ll2pvo6.apps.googleusercontent.com&approval_prompt=force">
					           		<img alt="" src="template/web/img/login_google.png">
					           		<span>Google</span>
					           	</a>
					        </div>
					     </div>
					</div>
					<p class="mt-4 mb-0 text-muted small">Hãy đăng nhập ngay để khám phá thế giới thời trang tại cửa hàng Skyline Shop.</p>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>
