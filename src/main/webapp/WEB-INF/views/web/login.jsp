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
	<h2 class="text-center">Đăng Nhập</h2> 
	<div class="login-form-wrapper container-wrapper">
	<form:form action="dang-nhap" method="POST" modelAttribute="user" class="form-signin rounded-sm shadow">  

			<!-- Nav tabs -->

			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Tab1 -->
				<div id="login" class="container tab-pane active">
					<label for="loginEmail" class="sr-only">Email address</label> 
						<form:input   type="email" class="form-control mb-4" placeholder="Email" path="email" />  
					<label for="loginPassword" class="sr-only">Password</label>
						<form:input   type="password" class="form-control mb-4" placeholder="Mật khẩu" path="password" />
					<div class="one-line mb-2">
						<div class="checkbox">
							<label> <input name="remember" type="checkbox"
								checked="checked" value="remember-me" /> Lưu mật khẩu
							</label>
						</div>
						<a class="forgot" href="#!">Quên mật khẩu?</a>
					</div>
					<a class="forgot" href="<c:url value='/dang-ky'/>">Bạn chưa có tài khoản</a> 

					<button class="btn btn-lg btn-login btn-block"
						onclick="loginUser()">Đăng nhập</button>
					<p class="mt-4 mb-0 text-muted small">Hãy đăng nhập ngay để
						khám phá thế giới thời trang tại cửa hàng Skyline Shop.</p>
				</div>
</div>
		</form:form>
		
	</div>
</body>
</html>
