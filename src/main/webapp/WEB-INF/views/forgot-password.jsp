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
<title>Skyline Shop - Đăng ký</title>

</head>

<body>
	<div class="login-form-wrapper container-wrapper">
		<form:form action="send-email" method="POST" modelAttribute="user"
			class="form-signin rounded-sm shadow">
			<!-- Tab2 -->
			<div id="register" class="container tab-pane ">
				<h2 class="text-center mb-4">Quên mật khẩu</h2>
				<c:if test="${not empty error}">
				    <div class="alert alert-danger">${error}</div>
				</c:if>
				
				<form:input type="email" class="form-control mb-4"
					placeholder="Nhập Email đã đăng ký" path="email" />

				<form:input type="password" class="form-control mb-4"
					placeholder="Nhập mật khẩu" path="password" />
				
				<form:input type="password" class="form-control mb-4"
					placeholder="Nhập lại mật khẩu" path="passwordconfirm" />

				
				<button class="btn btn-lg btn-login btn-block mb-3" type="submit"
					onclick="registerUser()">Đổi mật khẩu</button>
				<div class="d-flex justify-content-center">
					<span>Bạn đã có tài khoản? <a class=" text-center"
						href="<c:url value='/dang-nhap'/>">Hãy đăng nhập</a></span>
				</div>
				<p class="mt-4 mb-4 text-muted small">Đăng ký ngay để nhận được
					những ưu đãi hấp dẫn từ chúng tôi</p>
			</div>
		</form:form>
		<a href="<c:url value='/send-email'/>">Send</a>
	</div>
</body>
</html>
