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
					<input type="email" class="form-control mb-4" placeholder="Email" name="j_username" />
					<label for="loginPassword" class="sr-only">Password</label>
					<input type="password" class="form-control mb-4" placeholder="Mật khẩu" name="j_password" />
					<div class="one-line mb-2">
						<div class="checkbox">
							<label> 
								<input name="remember-me" type="checkbox" id="remember-me"/> Lưu mật khẩu
							</label>
						</div>
					</div>
					<button class="btn btn-lg btn-login btn-block mb-3" onclick="loginUser()">Đăng nhập</button>
					<div class="d-flex justify-content-center">
						<a class="" href="<c:url value='/quen-mat-khau'/>">Quên mật khẩu? </a>
						<a class="" href="<c:url value='/dang-ky'/>"> Bạn chưa có tài khoản</a>
					</div>
					<p class="mt-4 mb-0 text-muted small">Hãy đăng nhập ngay để khám phá thế giới thời trang tại cửa hàng Skyline Shop.</p>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
