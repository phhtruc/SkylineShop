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
		<form:form action="dang-ky" method="POST" modelAttribute="user" class="form-signin rounded-sm shadow">  
				<!-- Tab2 -->
				<div id="register" class="container tab-pane 	">
					 <h2 class="text-center mb-4">Đăng ký</h2> 
					<label
						for="registerEmail" class="sr-only">Email address</label>  
						<form:input   type="email" class="form-control mb-4" placeholder="Địa chỉ email" path="email" />  
					
					<label for="Mobile" class="sr-only">Mobile</label> 
					
						<form:input   type="text" class="form-control mb-4" placeholder="Nhập số điện thoại" path="phone" /> 
					<label
						for="registerUsername" class="sr-only">Email address</label> 

						<form:input   type="text" class="form-control mb-4" placeholder="Nhập tên đăng nhập" path="username" /> 
					<label
						for="registerPassword" class="sr-only">Password</label>
					
					<form:input   type="password" class="form-control mb-4" placeholder="Nhập mật khẩu" path="password" /> 
					<button class="btn btn-lg btn-login btn-block mb-3" type="submit"
						onclick="registerUser()">Đăng ký</button>
						<div class="d-flex justify-content-center">
							<a class=" text-center" href="<c:url value='/dang-nhap'/>">Bạn đã có tài khoản ư?</a> 
						</div>
					<p class="mt-4 mb-4 text-muted small">Đăng ký ngay để nhận được
						những ưu đãi hấp dẫn từ chúng tôi</p>
				</div>
			</form:form>
	</div>
</body>
</html>
