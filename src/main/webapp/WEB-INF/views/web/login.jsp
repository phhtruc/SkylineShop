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
<title>Skyline Shop - Đăng nhập</title>

</head>

<body>
	<div class="login-form-wrapper container-wrapper">
		<form class="form-signin rounded-sm shadow">
			<!-- Nav tabs -->
			<ul class="nav nav-pills mb-4">
				<li class="nav-item pill-1"><a
					class="nav-link active rounded-0" data-toggle="tab" href="#login">Đăng
						nhập</a></li>
				<li class="nav-item pill-2"><a class="nav-link rounded-0"
					data-toggle="tab" href="#register">Đăng ký</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Tab1 -->
				<div id="login" class="container tab-pane active">
					<label for="loginEmail" class="sr-only">Email address</label> <input
						name="email_lg" type="email" id="loginEmail"
						class="form-control mb-4" placeholder="Email" required autofocus />
					<label for="loginPassword" class="sr-only">Password</label> <input
						name="pass_lg" type="password" id="loginPassword"
						class="form-control mb-4" placeholder="Mật khẩu" required />
					<div class="one-line mb-2">
						<div class="checkbox">
							<label> <input name="remember" type="checkbox"
								checked="checked" value="remember-me" /> Lưu mật khẩu
							</label>
						</div>
						<a class="forgot" href="#!">Quên mật khẩu?</a>
					</div>

					<button class="btn btn-lg btn-login btn-block"
						onclick="loginUser()">Đăng nhập</button>
					<p class="mt-4 mb-0 text-muted small">Hãy đăng nhập ngay để
						khám phá thế giới thời trang tại cửa hàng Skyline Shop.</p>
				</div>

				<!-- Tab2 -->
				<div id="register" class="container tab-pane fade">
					<label for="Name" class="sr-only">Name</label> <input name="name"
						type="text" id="Name" class="form-control mb-4"
						placeholder="Tên người dùng" required /> <label
						for="registerEmail" class="sr-only">Email address</label> <input
						name="email_rg" type="email" id="registerEmail"
						class="form-control mb-4" placeholder="Địa chỉ email" required
						autofocus /> <label for="Mobile" class="sr-only">Mobile</label> <input
						name="mobile" type="tel" id="Mobile" class="form-control mb-4"
						placeholder="Số điện thoại" required /> <label
						for="registerPassword" class="sr-only">Password</label> <input
						name="pass_rg" type="password" id="registerPassword"
						class="form-control mb-4" placeholder="Mật khẩu" required />
					<button class="btn btn-lg btn-login btn-block"
						onclick="registerUser()">Đăng ký</button>
					<p class="mt-4 mb-0 text-muted small">Đăng ký ngay để nhận được
						những ưu đãi hấp dẫn từ chúng tôi</p>
				</div>
			</div>
		</form>
	</div>
</body>
</html>