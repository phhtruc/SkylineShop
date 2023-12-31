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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Skyline Shop - Đăng ký</title>

</head>

<body>
	<div class="login-form-wrapper container-wrapper">
		<form:form action="dang-ky" method="POST" modelAttribute="user"
			class="form-signin rounded-sm shadow" required="required" accept-charset="utf-8">
			<!-- Tab2 -->
			<div id="register" class="container tab-pane ">
				<h2 class="text-center mb-4">Đăng ký</h2>
				<c:if test="${status != null}">
						<div class="alert alert-danger">Tài khoản hoặc mật khẩu không đúng</div>
				</c:if>
				<c:if test="${not empty error}">
				    <div class="alert alert-danger">${error}</div>
				</c:if>
				<label for="registerFullName" class="sr-only">Tên</label>
				<form:input type="text" class="form-control mb-4" placeholder="Tên" required="required" path="fullName" />

				<label for="registerEmail" class="sr-only">Email address</label>
				<form:input type="email" class="form-control mb-4" required="required"
					placeholder="Địa chỉ email" path="email" />

				<label for="Mobile" class="sr-only">Mobile</label>
				<form:input type="tel" class="form-control mb-4" required="required"
					placeholder="Nhập số điện thoại" path="phone" pattern="^\d{10}$"/>

				<label for="registerPassword" class="sr-only">Password</label>
				<form:input type="password" class="form-control mb-4" required="required"
					placeholder="Nhập mật khẩu" path="password" />

				<form:input type="hidden" class="form-control mb-4" value="2"
					path="id_role" />
				<form:input type="hidden" class="form-control mb-4" value="1"
					path="status" />
				<button class="btn btn-lg btn-login btn-block mb-3" type="submit"
					onclick="registerUser()">Đăng ký</button>
				<div class="d-flex justify-content-center">
					<span>Bạn đã có tài khoản? <a class=" text-center"
						href="<c:url value='/dang-nhap'/>">Hãy đăng nhập</a></span>
				</div>
				
					    
					
				<p class="mt-4 mb-4 text-muted small">Đăng ký ngay để nhận được
					những ưu đãi hấp dẫn từ chúng tôi</p>
					
					<div class = "another-signin mt-4">
					     <p> <i>Hoặc đăng nhập bằng </i></p>
					     <div class = "row container d-flex justify-content-center gap-3">
					        <div class= "col container-as">
					           <img alt="" src="template/web/img/login_fb.png">
					           <span>FaceBook</span>
					        </div>
					         <div class= "col container-as">	           
					         	<a style="width: 100%; height: 100%" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8888/SkylineShop/login-google&response_type=code
    &client_id=946928910591-a6uhbkq7ahh2nv3lnrvss0si8ll2pvo6.apps.googleusercontent.com&approval_prompt=force">
					           	<img alt="" src="template/web/img/login_google.png">
					           	<span>Google</span></a>
					           
					        </div>
					     </div>
				
					</div>
					</div>
			</div>
		</form:form>
	</div>
</body>
</html>