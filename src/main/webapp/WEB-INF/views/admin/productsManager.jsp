<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.modal-header .close {
	margin-top: -22px;
}

@media ( min-width : 768px) {
	.form-inline .form-group {
		display: block;
		margin-bottom: 15px;
	}
}
.button-without-border {
	        border: none !important;
	        outline: none; /* Remove the outline when the button is clicked */
	        background-color: transparent;
	        cursor: pointer;
	}
</style>

</head>
<body class="no-skin">

	<!-- header -->

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check("main-container", "fixed");
			} catch (e) {
			}
		</script>

		<!-- sidebar -->
		<%@ include file="/common/admin/sidebar.jsp"%>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check("breadcrumbs", "fixed");
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>

						<li><a href="#">Quản lý</a></li>
						<li class="active">Quản lý sản phẩm</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9
											</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; Choose Skin</span>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-navbar" /> <label class="lbl"
										for="ace-settings-navbar"> Fixed Navbar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-sidebar" /> <label class="lbl"
										for="ace-settings-sidebar"> Fixed Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-breadcrumbs" /> <label class="lbl"
										for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" /> <label class="lbl"
										for="ace-settings-rtl"> Right To Left (rtl)</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-add-container" /> <label class="lbl"
										for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>
							</div>
							<!-- /.pull-left -->

							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" /> <label class="lbl"
										for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" /> <label class="lbl"
										for="ace-settings-compact"> Compact Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" /> <label class="lbl"
										for="ace-settings-highlight"> Alt. Active Item</label>
								</div>
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<!--hết-->

							<div class="row">
								<div class="col-xs-12">
									<h3 class="header smaller lighter blue">Quản lý sản phẩm</h3>

									<div class="clearfix">
										<div class="pull-right tableTools-container"></div>
									</div>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModalCenter">
										Thêm sản phẩm mới</button>
									<div class="modal fade" id="exampleModalCenter" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalCenterTitle"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<form class="form-horizontal" role="form" id="form-create-new-product" enctype="multipart/form-data">
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Tên sản phẩm </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1"
																	placeholder="Tên sản phẩm" class="col-xs-10"
																	name="product_name" />
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Giá </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1" placeholder="Giá"
																	class="col-xs-10" name="price" />
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Mô tả </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1"
																	placeholder="Mô tả " class="col-xs-10" name="desc" />
															</div>
														</div>
														
														<input type="hidden" id="form-field-1 id_p"
																	placeholder="Mô tả " class="col-xs-10" name="id_pro" />

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Ảnh </label>

															<div class="col-sm-9">
																<img id="img1"
																	style="max-width: 100%; max-height: 120px; margin: 10px;" />
																<input type="file" id="id-input-file-1"
																	onchange="previewImage1()" /> <img id="img2"
																	style="max-width: 100%; max-height: 120px; margin: 10px;" />
																<input type="file" id="id-input-file-2"
																	onchange="previewImage2()" /> <img id="img3"
																	style="max-width: 100%; max-height: 120px; margin: 10px;" />
																<input type="file" id="id-input-file-3"
																	onchange="previewImage3()" value="bantay.jpg"/>
															</div>
														</div>

														<div class="form-group" id="category"></div>

														<div class="form-group" id="brand-select"></div>

														<div class="clearfix form-actions">
															<div class="col-md-offset-3 col-md-9">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Close</button>
																&nbsp; &nbsp; &nbsp;
																<button class="btn btn-info" type="button" id="edit">
																	<i class="ace-icon fa fa-check bigger-110"></i> Submit
																</button>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>

									<!-- div.dataTables_borderWrap -->
									<div>
										<table id="dynamic-table"
											class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center"><label class="pos-rel"> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th>Tên sản phẩm</th>
													<th>Giá</th>
													<th class="hidden-480">Mô tả</th>
													<th>Brand</th>
													<th class="hidden-480">Danh mục</th>
													<th></th>
												</tr>
											</thead>
											<tbody id="table">
												<tr>
													<td class="center"><label class="pos-rel"> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">max.com</a></td>
													<td>$60</td>
													<td class="hidden-480">4,400</td>
													<td>Mar 11</td>

													<td class="hidden-480"><span
														class="label label-sm label-warning">Expiring</span></td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="green" href="#"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a> <a class="red" href="#"> <i
																class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button
																	class="btn btn-minier btn-yellow dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i
																		class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="View"> <span
																			class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- footer -->

	</div>
	<!-- /.main-container -->

	<!-- inline scripts related to this page -->
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@latest/dist/sweetalert2.all.min.js"></script>		
	
	<script>
		$(document).ready(function() {
			// Thực hiện yêu cầu AJAX để lấy danh sách sản phẩm từ API
			$.ajax({
				url : 'http://localhost:8888/SkylineShop/api/products',
				type : 'GET',
				dataType : 'json',
				success : function(response) {
					displayProducts(response);
				},
				error : function(error) {
					console.error('Error fetching product list:',error);
				}
			});
			
			//Them san pham
			$('#submit').click(function (e) {
			    e.preventDefault();
			   
			    // Tạo đối tượng FormData và thêm giá trị từ form vào
			    var formData = new FormData($('#form-create-new-product')[0]);
			    
			    // Thêm các file vào FormData
			    formData.append('file', $('#id-input-file-1')[0].files[0]);
			    formData.append('file', $('#id-input-file-2')[0].files[0]);
			    formData.append('file', $('#id-input-file-3')[0].files[0]);
			    $.ajax({
			        url: 'http://localhost:8888/SkylineShop/api/products',
			        type: 'POST',
			        processData: false,
			        contentType: false,
			        data: formData,
			        success: function (response) {
			        	 displayProducts(response);
			        	 Swal.fire({
		                	  title: 'Thêm mới sản phẩm thành công',
		                	  showClass: {
		                	    popup: 'animate__animated animate__fadeInDown'
		                	  },
		                	  hideClass: {
		                	    popup: 'animate__animated animate__fadeOutUp'
		                	  }
		                })
			        },
			        error: function (error) {
			            console.log(error);
			        }
			    });
			});
			
			// Sửa sản phẩm
			$(document).on('click', '.green-edit', function (e) {
				e.preventDefault();
				var idProduct = $(this).closest('tr').find('.id-product').val();
		        $.ajax({
		            url: 'http://localhost:8888/SkylineShop/api/products/'+idProduct, // Thay đổi URL này thành địa chỉ URL thích hợp của bạn
		            method: 'GET',
		            dataType: 'json',
		            success: function(response) {
		            	$('#form-create-new-product input[name="product_name"]').val(response.productEntity.product_name);
		                $('#form-create-new-product input[name="price"]').val(response.productEntity.price);
		                $('#form-create-new-product input[name="desc"]').val(response.productEntity.desc);
		                
		                $('#form-create-new-product select[name="cate_name"]').val(response.productEntity.cate_name);
		                $('#form-create-new-product select[name="brand_name"]').val(response.productEntity.brand_name);
		                $('#form-create-new-product input[name="id_pro"]').val(response.productEntity.id_product);
		                //var button = $("#submit");
		                //button.attr("id", "edit");

		                // Hiển thị ảnh preview (nếu có)
		                if (response.file) {
		                	for(var i =0; i < response.file.length; i++ ){
		                		var name = response.file[i];
		                		var imagePath = '${pageContext.request.contextPath}/template/web/images/' + name.fileName;
		                		$('#img' + (i+1)).attr('src', imagePath);
		                	}
		                }
		                
		            },
		            error: function(error) {
		                console.error('Error:', error);
		            }
		        });
			});
			$(document).on('click', '#edit', function (e) {
				e.preventDefault();
				var idProduct = $('#form-create-new-product input[name="id_pro"]').val();
				var formData = new FormData($('#form-create-new-product')[0]);
			    
			    // Thêm các file vào FormData
			    formData.append('file', $('#id-input-file-1')[0].files[0]);
			    formData.append('file', $('#id-input-file-2')[0].files[0]);
			    formData.append('file', $('#id-input-file-3')[0].files[0])
			    $.ajax({
			    	url: 'http://localhost:8888/SkylineShop/api/products/'+idProduct,
			        type: 'PUT',
			        processData: false,
			        contentType: false,
			        data: formData,
			        success: function (response) {
			        	 displayProducts(response);
			        	 Swal.fire({
		                	  title: 'Thay đổi thông tin thành công',
		                	  showClass: {
		                	    popup: 'animate__animated animate__fadeInDown'
		                	  },
		                	  hideClass: {
		                	    popup: 'animate__animated animate__fadeOutUp'
		                	  }
		                })
			        },
			        error: function (error) {
			            console.log(error);
			        }
			    });
			});
	
			//Xoa san pham
			$(document).on('click', '.red-delete', function (e) {
			    e.preventDefault();
			    var idProduct = $(this).closest('tr').find('.id-product').val();
			    
			    Swal.fire({
			    	  title: 'Xóa sản phẩm?',
			    	  text: "Bạn có chắc chắn muốn xóa sản phẩm này?",
			    	  icon: 'warning',
			    	  showCancelButton: true,
			    	  confirmButtonColor: '#3085d6',
			    	  cancelButtonColor: '#d33',
			    	  confirmButtonText: 'Xóa'
			    	}).then((result) => {
			    	  if (result.isConfirmed) {
			    		  var urlink = 'http://localhost:8888/SkylineShop/api/products/'+ idProduct;
						    $.ajax({
						      url: urlink,
						      type: 'DELETE',
						      processData: false,
						      contentType: false,
						      dataType: 'json',
						      success: function (response) {
						    	  displayProducts(response);
						      },
						      error: function (error) {
						        console.log(error);
						      },
						    });
			    	    Swal.fire(
			    	      'Thành công!',
			    	      'Bạn đã xóa sản phẩm thành công',
			    	      'success'
			    	    )
			    	  }
			    	})
			});
	
			function displayProducts(response) {
				// Lặp qua danh sách sản phẩm và thêm chúng vào danh sách UL
				var tbody = $('#table'); // ID của tbody trong bảng
				// Xóa các dòng cũ trong tbody
				tbody.empty();
				// Lặp qua danh sách sản phẩm và thêm từng sản phẩm vào tbody
				for (var i = 0; i < response.products.length; i++) {
					var product = response.products[i];
					// Tạo một dòng tr mới
					var row = $('<tr>');
					
					var hiddenInput = $('<input type="hidden" class="id-product">').val(product.id_product);
			        row.append(hiddenInput);
			        
					// Thêm checkbox
					var checkboxCell = $('<td class="center">')
							.html(
									'<label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>');
					row.append(checkboxCell);
					// Thêm tên sản phẩm (ví dụ: <td><a href="#">max.com</a></td>)
					var productNameCell = $('<td>').html(
							'<a href="#">'
									+ product.product_name
									+ '</a>');
					row.append(productNameCell);
					// Thêm giá (ví dụ: <td>$60</td>)
					var priceCell = $('<td>').text(
							'' + product.price);
					row.append(priceCell);
					//Thêm mô tả <td class="hidden-480">4,400</td>
					var desc = $('<td class="hidden-480">')
							.text('' + product.desc);
					row.append(desc);
					// Thêm brand <td>Mar 11</td>
					var brand = $('<td>').text(
							'' + product.brand_name);
					row.append(brand);
					//Thêm danh mục <td class="hidden-480"><span class="label label-sm label-warning">Expiring</span></td>
					var cate = $('<td class="hidden-480">')
							.text('' + product.cate_name);
					row.append(cate);
					// Thêm các nút "Edit" và "Delete"
					var actionCell = $('<td>');
	
					// Nút "Edit" cho màn hình lớn
					actionCell.append('<div class="hidden-sm hidden-xs action-buttons">'
	    							+ '<button class="green green-edit" data-toggle="modal" data-target="#exampleModalCenter" style="border: none !important; background-color: transparent;"><i class="fa fa-pencil bigger-130" aria-hidden="true"></i></i></button>'
	    							+ '<button class="red red-delete" style="border: none !important; background-color: transparent;"><i class="ace-icon fa fa-trash-o bigger-130"></i></button>'
	    							+ '</div>');
	
					// Nút "Edit" cho màn hình nhỏ
					actionCell
							.append('<div class="hidden-md hidden-lg">'
									+ '<div class="inline pos-rel">'
									+ '<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">'
									+ '<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>'
									+ '</button>'
									+ '<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">'
									+ '<li><a href="#" class="tooltip-info" data-rel="tooltip" title="View"> <span class="blue"> <i class="ace-icon fa fa-search-plus bigger-120"></i></span></a></li>'
									+ '<li><a href="#" class="tooltip-success" data-rel="tooltip" title="Edit"> <span class="green"> <i class="ace-icon fa fa-pencil-square-o bigger-120"></i></span></a></li>'
									+ '<li><a href="#" class="tooltip-error" data-rel="tooltip" title="Delete"> <span class="red"> <i class="ace-icon fa fa-trash-o bigger-120"></i></span></a></li>'
									+ '</ul>'
									+ '</div>'
									+ '</div>');
	
					// Thêm cột actionCell vào dòng
					row.append(actionCell);
	
					// Thêm dòng vào tbody
					tbody.append(row);
				}
				
				//Category
				// Lấy element có class là "form-group" để thêm các select box vào đó
				var formGroupContainer = $('#category');
				// Lặp qua danh sách categories trong response
				formGroupContainer.empty();
				// Tạo một element select bằng jQuery
				var selectElement = $('<select>').addClass('col-sm-3').attr('name', 'cate_name');
	
				// Đặt id của selectElement dựa trên thông tin của category (ví dụ: category.id)
				selectElement.attr('id','form-field-select-1');
	
				// Thêm một option rỗng
				selectElement.append($('<option>').val('').text(''));
				for (var i = 0; i < response.categories.length; i++) {
					var category = response.categories[i];
					
					// Thêm một option mới với giá trị và nội dung dựa trên thông tin của mỗi mục trong category
					selectElement.append($('<option>').val(category.cate_name).text(category.cate_name));
				}
	
				// Tạo một element label bằng jQuery
				var labelElement = $('<label>').attr({
					'for' : selectElement.attr('id'),
					'class' : 'col-sm-3 me-2 control-label'
				}).text('Danh mục');
	
				// Tạo một element div để chứa label và select bằng jQuery
				var divContainer = $('<div>').addClass('form-group');
				divContainer.append(labelElement);
				divContainer.append(selectElement);
	
				// Thêm divContainer vào formGroupContainer
				formGroupContainer.append(divContainer);
				
				//Brand
				var formGroup = $('#brand-select');
				formGroup.empty();
				var select = $('<select>').addClass('col-sm-3').attr('name', 'brand_name');
				select.attr('id','form-field-select-1');
				select.append($('<option>').val('').text(''));
				for (var i = 0; i < response.brands.length; i++) {
					var brands = response.brands[i];
					select.append($('<option>').val(brands.brand_name).text(brands.brand_name));
				}
				// Tạo một element label bằng jQuery
				var label = $('<label>').attr({
					'for' : select.attr('id'),
					'class' : 'col-sm-3 me-2 control-label'
				}).text('Brand');
				// Tạo một element div để chứa label và select bằng jQuery
				var div = $('<div>').addClass('form-group');
				div.append(label);
				div.append(select);
	
				// Thêm divContainer vào formGroupContainer
				formGroup.append(div);
			}
			
		});
	</script>
	<script type="text/javascript">
		function previewImage1() {
			var fileInput = document.getElementById('id-input-file-1');
			var preview = document.getElementById('img1');

			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					preview.src = e.target.result;
				};

				reader.readAsDataURL(fileInput.files[0]);
			}
		}
		function previewImage2() {
			var fileInput = document.getElementById('id-input-file-2');
			var preview = document.getElementById('img2');

			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					preview.src = e.target.result;
				};

				reader.readAsDataURL(fileInput.files[0]);
			}
		}
		function previewImage3() {
			var fileInput = document.getElementById('id-input-file-3');
			var preview = document.getElementById('img3');

			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					preview.src = e.target.result;
				};

				reader.readAsDataURL(fileInput.files[0]);
			}
		}
	</script>
</body>
</html>