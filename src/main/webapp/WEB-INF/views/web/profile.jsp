<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8" />
<meta name="description" content="Male_Fashion Template" />
<meta name="keywords" content="Male_Fashion, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Skyline Shop</title>

</head>

<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Tài khoản của tôi</h4>
						<div class="breadcrumb__links">
							<a href="./index.html">Trang Chủ</a> <span>Tài khoản của
								tôi</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- About Section Begin -->
	<div class="container light-style flex-grow-1 container-p-y mb-5">
		<div class="card overflow-hidden">
			<div class="row no-gutters row-bordered row-border-light">
				<div class="col-md-3 pt-0">
					<div class="list-group list-group-flush account-settings-links">
						<a class="list-group-item list-group-item-action active"
							data-toggle="list" href="#account-general">Tổng quan</a> <a
							class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-change-password">Thay đổi mật khẩu</a> <a
							class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-social-links">Đơn mua</a> <a
							class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-connections">Kho voucher</a> <a
							class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-notifications">Thông báo</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<form:form action="update-profile" method="POST" modelAttribute="user" class="tab-pane fade active show" id="account-general" enctype="multipart/form-data" required="required" accept-charset="utf-8">
							<div class="card-body media align-items-center">							
								<c:choose>
								    <c:when test="${not empty user.getImageuser()}">
								        <img id="preview" src="${pageContext.request.contextPath}/images/${user.getImageuser()}" style="max-width: 100%; max-height: 200px" class="d-block ui-w-80" />
								    </c:when>
								    <c:otherwise>
								        <img  src="${pageContext.request.contextPath}/images/1.png" style="max-width: 100%; max-height: 200px" class="d-block ui-w-80" />
								    </c:otherwise>
								</c:choose>
								<div class="media-body ml-4">
									<label class="btn btn-outline-dark mt-2"> Tải ảnh mới lên 
									<input type="file" id="fileInput" name="file" class="account-settings-fileinput"  onchange="previewImage()" />
									</label> &nbsp;
									<div class="small mt-1">Cho phép JPG, GIF hoặc PNG. Kích
										thước tối đa 800K </div>
								</div>
							</div>
							<c:choose>
								    <c:when test="${not empty status}">
								        <div class="alert alert-success">${status}</div>
								    </c:when>
							</c:choose>
							<hr class="border-light m-0" />
							<div class="card-body">
								<div class="form-group">
									<form:input type="hidden" class="form-control mb-4" value="${user.getId_user()}" path="id_user" />
								</div>
								<div class="form-group">
									<form:input type="hidden" class="form-control mb-4" value="${user.getImageuser()}" path="imageuser" />
								</div>
								<div class="form-group">
									<label class="form-label">Tên đầy đủ</label> 
									<form:input type="text" class="form-control mb-1"  path="fullName" value="${user.getFullName()}"/>
								</div>
								<div class="form-group">
									<label class="form-label">Số điện thoại</label>
										<form:input type="text" class="form-control"  path="phone" value="${user.getPhone()}" pattern="^\d{10}$"/>
								</div>
								<div class="form-group">
									<label class="form-label">E-mail</label>
										<form:input type="text" class="form-control mb-1" path="email" value="${user.getEmail()}" />
								</div>
							</div>
							<div class="text-right my-3 me-4">
								<button type="submit" class="btn btn-dark">Lưu thay đổi
								</button>
							</div>
						</form:form>
						<form:form action="change-password" method="POST" modelAttribute="user" class="tab-pane fade" id="account-change-password" required="required" accept-charset="utf-8">

							<div class="card-body pb-2">
								<div class="form-group">
									<form:input type="hidden" class="form-control mb-4" value="${user.getId_user()}" path="id_user" />
								</div>
								<div class="form-group">
										<form:input type="hidden" class="form-control mb-1" path="email" value="${user.getEmail()}" />
								</div>
								<div class="form-group">
									<label class="form-label">Mật khẩu cũ</label> 
										<form:input type="password" class="form-control" path="passwordold" />
								</div>
								<div class="form-group">
									<label class="form-label">Mật khẩu mới</label> 
										<form:input type="password" class="form-control" path="passwordconfirm" />
								</div>
								<div class="form-group">
									<label class="form-label">Nhập lại mật khẩu mới</label> 
										<form:input type="password" class="form-control" path="passwordconfirm1" />
								</div>
							</div>
							<div class="text-right my-3 me-4">
								<button type="submit" class="btn btn-dark">Lưu thay đổi</button>
							</div>
						</form:form>
						<div class="tab-pane fade" id="account-social-links">
							<div class="container">
								<div class="col-xxl-8 col-12">
									<!-- card -->
									<div class="card">
										<!-- card body-->
										<div class="card-body">
											<div class="mb-6">
												<h4 class="mb-0">Đơn hàng của bạn</h4>
												<p>Kiểm tra trạng thái của các đơn đặt hàng gần đây,
													quản lý trả lại và khám phá các sản phẩm tương tự.</p>
											</div>
											<div class="mb-8">
												<!-- text -->
												<div
													class="border-bottom mb-3 pb-3 d-lg-flex align-items-center justify-content-between">
													<div
														class="d-flex align-items-center justify-content-between">
														<h5 class="mb-0">Đơn hàng #GK00017</h5>
														<span class="ms-2">Giao vào ngày 26 tháng 6 năm
															2023</span>
													</div>
													<div
														class="d-flex align-items-center justify-content-between">
														<!-- link -->
														<a href="#">Quản lý đơn hàng</a> <a href="#" class="ms-6">Xem
															hóa đơn</a>
													</div>
												</div>
												<!-- row -->
												<div class="row justify-content-between align-items-center">
													<!-- col -->
													<div class="col-lg-8 col-12">
														<div class="d-md-flex">
															<div>
																<!-- img -->
																<img src="./img/product/product-1.jpg" alt=""
																	class="img-4by3-xl rounded" />
															</div>
															<div class="ms-md-4 mt-2 mt-lg-0">
																<!-- heading -->
																<h5 class="mb-1">Trắng &amp; Giày thể thao Nike màu
																	đỏ</h5>
																<!-- text -->
																<span>Màu: <span class="text-dark">Cam</span>,
																	Size:<span class="text-dark"> 40</span>
																</span>
																<!-- text -->
																<div class="mt-3">
																	<h4>$49.00</h4>
																</div>
															</div>
														</div>
													</div>
													<!-- button -->
													<div class="col-lg-3 col-12 d-grid">
														<a href="products.html" class="btn btn-dark mb-2">Mua
															lại</a> <a href="#" class="btn btn-secondary"> Sản phẩm
															tương tự</a>
													</div>
												</div>
												<hr class="my-3" />
												<!-- row -->
												<div class="row justify-content-between align-items-center">
													<!-- col -->
													<div class="col-lg-8 col-12">
														<div class="d-md-flex">
															<div>
																<!-- img -->
																<img src="./img/product/product-2.jpg" alt=""
																	class="img-4by3-xl rounded" />
															</div>
															<!-- text -->
															<div class="ms-md-4 mt-2 mt-lg-0">
																<!-- heading -->
																<h5 class="mb-1">Nike Đen và Trắng</h5>
																<span>Màu: <span class="text-dark">Đen</span>,
																	Size:<span class="text-dark"> 31</span>
																</span>
																<div class="mt-3">
																	<h4>$79.00</h4>
																</div>
															</div>
														</div>
													</div>
													<!-- button -->
													<div class="col-lg-3 col-12 d-grid">
														<a href="products.html" class="btn btn-dark mb-2">Mua
															lại </a> <a href="#" class="btn btn-secondary"> Sản phẩm
															tương tự</a>
													</div>
												</div>
											</div>
											<div class="mb-6">
												<!-- text -->
												<div
													class="border-bottom mb-3 pb-3 d-lg-flex align-items-center justify-content-between">
													<div class="d-flex align-items-center">
														<h5 class="mb-0">Đơn hàng #GK00012</h5>
														<span class="ms-2">Giao vào ngày 26 tháng 6 năm
															2023</span>
													</div>
													<div>
														<!-- link -->
														<a href="#">Quản lý đơn hàng</a> <a href="#" class="ms-6">Xem
															hóa đơn</a>
													</div>
												</div>
												<!-- row -->
												<div class="row justify-content-between align-items-center">
													<div class="col-lg-8 col-12">
														<div class="d-md-flex">
															<div>
																<!-- img -->
																<img src="template/web/img/product/product-3.jpg" alt=""
																	class="img-4by3-xl rounded" />
															</div>
															<div class="ms-md-4 mt-2 mt-lg-0">
																<!-- text -->
																<h5 class="mb-1">plimsoll màu hạt dẻ chưa ghép đôi
																</h5>
																<!-- color -->
																<span>Màu: <span class="text-dark">Đỏ</span>,
																	Size:<span class="text-dark"> 30</span>
																</span>
																<!-- text -->
																<div class="mt-3">
																	<h4>$89.00</h4>
																</div>
															</div>
														</div>
													</div>
													<!-- button -->
													<div class="col-lg-3 col-12 d-grid">
														<a href="products.html" class="btn btn-dark mb-2">Mua
															lại</a> <a href="#" class="btn btn-secondary"> Sản phẩm
															tương tự</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="account-connections">
							<div class="p-3">
								<h2 class="m-3 text-center bold">Kho voucher</h2>
								<div
									class="input-voucher m-2 d-flex flex-row justify-content-center align-items-center gap-3 p-3">
									<p class="mt-2 fs-5">Mã voucher</p>
									<input type="text" class="p-2"
										placeholder="Nhập mã voucher tại đây" />
									<button class="btn btn-dark">Lưu</button>
								</div>
								<div class="row gap-2 my-2">
									<div class="voucher-item col p-3 ms-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
									<div class="voucher-item col p-3 me-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
								</div>

								<div class="row gap-2 my-2">
									<div class="voucher-item col p-3 ms-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
									<div class="voucher-item col p-3 me-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
								</div>

								<div class="row gap-2 my-2">
									<div class="voucher-item col p-3 ms-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
									<div class="voucher-item col p-3 me-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
								</div>

								<div class="row gap-2 my-2">
									<div class="voucher-item col p-3 ms-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
									<div class="voucher-item col p-3 me-4">
										<div class="row justify-content-around">
											<div
												class="col-2 d-flex align-items-center justify-content-center">
												<img src="template/web/img/coupon.png" alt="" />
											</div>
											<div class="col-6">
												<p class="m-0">Mã voucher: ABCXYZ</p>
												<p class="m-0">Giảm 12%</p>
												<p class="m-0">Đơn tối thiểu 100k</p>
												<p class="m-0">Có hiệu lực sau: 1 ngày</p>
											</div>
											<div class="col-4 d-flex align-items-center">
												<a href="shop.html" class="">Dùng ngay</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="account-notifications">
							<div class="card-body pb-2">
								<h6 class="mb-4">Hoạt động</h6>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" checked /> <span
										class="switcher-indicator"> <span class="switcher-yes"></span>
											<span class="switcher-no"></span>
									</span> <span class="switcher-label">Gửi email cho tôi về trạng
											thái đơn hàng</span>
									</label>
								</div>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" checked /> <span
										class="switcher-indicator"> <span class="switcher-yes"></span>
											<span class="switcher-no"></span>
									</span> <span class="switcher-label">Gửi email cho tôi khi có
											ai đó theo dõi tôi</span>
									</label>
								</div>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" /> <span class="switcher-indicator">
											<span class="switcher-yes"></span> <span class="switcher-no"></span>
									</span> <span class="switcher-label">Gửi email cho tôi khi có
											ai đó trả lời bình luận của tôi</span>
									</label>
								</div>
							</div>
							<hr class="border-light m-0" />
							<div class="card-body pb-2">
								<h6 class="mb-4">Ứng dụng</h6>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" checked /> <span
										class="switcher-indicator"> <span class="switcher-yes"></span>
											<span class="switcher-no"></span>
									</span> <span class="switcher-label">Tin tức và thông báo</span>
									</label>
								</div>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" /> <span class="switcher-indicator">
											<span class="switcher-yes"></span> <span class="switcher-no"></span>
									</span> <span class="switcher-label">Cập nhật sản phẩm hàng
											tuần</span>
									</label>
								</div>
								<div class="form-group">
									<label class="switcher"> <input type="checkbox"
										class="switcher-input" checked /> <span
										class="switcher-indicator"> <span class="switcher-yes"></span>
											<span class="switcher-no"></span>
									</span> <span class="switcher-label">Thông báo blog hàng tuần</span>
									</label>
								</div>
							</div>
							<div class="text-right my-3 me-4">
								<button type="button" class="btn btn-dark">Lưu thay đổi
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@latest/dist/sweetalert2.all.min.js"></script>
	<!-- About Section End -->
	<script type="text/javascript">
            function previewImage() {
                var fileInput = document.getElementById('fileInput');
                var preview = document.getElementById('preview');

                if (fileInput.files && fileInput.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        preview.src = e.target.result;
                    };

                    reader.readAsDataURL(fileInput.files[0]);
                }
            }
        </script>
	<script>
	    var alert = ${alert1};
	
	    if (alert !== undefined && (alert == 1 || alert !== null)) {
	        Swal.fire({
	            title: "Thông báo",
	            text: "Mật khẩu của bạn đã được thay đổi thành công!",
	            icon: "success",
	            confirmButtonColor: "#3085d6"
	        });
	    }
	    if (alert !== undefined && (alert == 2 || alert !== null)){
	    	Swal.fire({
	    		  icon: 'error',
	    		  title: 'Lỗi',
	    		  text: 'Có thể mật khẩu cũ hoặc mật khẩu nhập lại không đúng!'
	    		})
	    }
	</script>
</body>

</html>