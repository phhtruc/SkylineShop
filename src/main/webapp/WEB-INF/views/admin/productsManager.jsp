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
													<h5 class="modal-title" id="exampleModalLongTitle">
														Thêm mới sản phẩm</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">

													<form class="form-horizontal" role="form"
														id="form-create-new-product">
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
																	onchange="previewImage3()" />
															</div>
														</div>

														<div class="form-group" id="category"></div>

														<div class="form-group" id="brand-select"></div>

														<div class="clearfix form-actions">
															<div class="col-md-offset-3 col-md-9">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Close</button>
																&nbsp; &nbsp; &nbsp;
																<button class="btn btn-info" type="button" id="submit">
																	<i class="ace-icon fa fa-check bigger-110"></i> Submit
																</button>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
<script type="text/javascript">
	$('#submit').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#form-create-new-product').serializeArray();
	
	    $.each(formData, function (i, v) {
	        data[v.name] = v.value;
	    });
	
	    var fileData = new FormData();
	    fileData.append('image1', $('#id-input-file-1')[0].files[0]);
	    fileData.append('image2', $('#id-input-file-2')[0].files[0]);
	    fileData.append('image3', $('#id-input-file-3')[0].files[0]);
	
	    var postData = {
	        productData: JSON.stringify(data),
	        fileData: fileData
	    };
	
	    $.ajax({
	        url: 'http://localhost:8888/SkylineShop/api/products',
	        type: 'POST',
	        processData: false,
	        contentType: false,
	        data: postData,
	        dataType: 'json',
	        success: function (result) {
	            console.log(result);
	        },
	        error: function (error) {
	            console.log(error);
	        }
	    });
	});
</script>

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

							<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												Results for "Latest Registered Domains
											</div>
										</div>

										<div class="modal-body no-padding">
											<table
												class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
												<thead>
													<tr>
														<th>Domain</th>
														<th>Price</th>
														<th>Clicks</th>

														<th><i class="ace-icon fa fa-clock-o bigger-110"></i>
															Update</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td><a href="#">ace.com</a></td>
														<td>$45</td>
														<td>3,330</td>
														<td>Feb 12</td>
													</tr>

													<tr>
														<td><a href="#">base.com</a></td>
														<td>$35</td>
														<td>2,595</td>
														<td>Feb 18</td>
													</tr>

													<tr>
														<td><a href="#">max.com</a></td>
														<td>$60</td>
														<td>4,400</td>
														<td>Mar 11</td>
													</tr>

													<tr>
														<td><a href="#">best.com</a></td>
														<td>$75</td>
														<td>6,500</td>
														<td>Apr 03</td>
													</tr>

													<tr>
														<td><a href="#">pro.com</a></td>
														<td>$55</td>
														<td>4,250</td>
														<td>Jan 21</td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="modal-footer no-margin-top">
											<button class="btn btn-sm btn-danger pull-left"
												data-dismiss="modal">
												<i class="ace-icon fa fa-times"></i> Close
											</button>

											<ul class="pagination pull-right no-margin">
												<li class="prev disabled"><a href="#"> <i
														class="ace-icon fa fa-angle-double-left"></i>
												</a></li>

												<li class="active"><a href="#">1</a></li>

												<li><a href="#">2</a></li>

												<li><a href="#">3</a></li>

												<li class="next"><a href="#"> <i
														class="ace-icon fa fa-angle-double-right"></i>
												</a></li>
											</ul>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
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
	<script type="text/javascript">
		jQuery(function($) {
			//initiate dataTables plugin
			var oTable1 = $("#dynamic-table")
			//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
			.dataTable({
				bAutoWidth : false,
				aoColumns : [ {
					bSortable : false
				}, null, null, null, null, null, {
					bSortable : false
				}, ],
				aaSorting : [],

			//TableTools settings
			TableTools.classes.container = "btn-group btn-overlap";
			TableTools.classes.print = {
				body : "DTTT_Print",
				info : "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
				message : "tableTools-print-navbar",
			};

			//initiate TableTools extension
			var tableTools_obj = new $.fn.dataTable.TableTools(
					oTable1,
					{
						sSwfPath : "assets/swf/copy_csv_xls_pdf.swf",

						sRowSelector : "td:not(:last-child)",
						sRowSelect : "multi",
						fnRowSelected : function(row) {
							//check checkbox when row is selected
							try {
								$(row).find("input[type=checkbox]").get(0).checked = true;
							} catch (e) {
							}
						},
						fnRowDeselected : function(row) {
							//uncheck checkbox
							try {
								$(row).find("input[type=checkbox]").get(0).checked = false;
							} catch (e) {
							}
						},

						sSelectedClass : "success",
						aButtons : [
								{
									sExtends : "copy",
									sToolTip : "Copy to clipboard",
									sButtonClass : "btn btn-white btn-primary btn-bold",
									sButtonText : "<i class='fa fa-copy bigger-110 pink'></i>",
									fnComplete : function() {
										this
												.fnInfo(
														'<h3 class="no-margin-top smaller">Table copied</h3>\
									<p>Copied '
																+ oTable1
																		.fnSettings()
																		.fnRecordsTotal()
																+ " row(s) to the clipboard.</p>",
														1500);
									},
								},

								{
									sExtends : "csv",
									sToolTip : "Export to CSV",
									sButtonClass : "btn btn-white btn-primary  btn-bold",
									sButtonText : "<i class='fa fa-file-excel-o bigger-110 green'></i>",
								},

								{
									sExtends : "pdf",
									sToolTip : "Export to PDF",
									sButtonClass : "btn btn-white btn-primary  btn-bold",
									sButtonText : "<i class='fa fa-file-pdf-o bigger-110 red'></i>",
								},

								{
									sExtends : "print",
									sToolTip : "Print view",
									sButtonClass : "btn btn-white btn-primary  btn-bold",
									sButtonText : "<i class='fa fa-print bigger-110 grey'></i>",

									sMessage : "<div class='navbar navbar-default'><div class='navbar-header pull-left'><a class='navbar-brand' href='#'><small>Optional Navbar &amp; Text</small></a></div></div>",

									sInfo : "<h3 class='no-margin-top'>Print view</h3>\
									  <p>Please use your browser's print function to\
									  print this table.\
									  <br />Press <b>escape</b> when finished.</p>",
								}, ],
					});
			//we put a container before our table and append TableTools element to it
			$(tableTools_obj.fnContainer())
					.appendTo($(".tableTools-container"));

			//also add tooltips to table tools buttons
			//addding tooltips directly to "A" buttons results in buttons disappearing (weired! don't know why!)
			//so we add tooltips to the "DIV" child after it becomes inserted
			//flash objects inside table tools buttons are inserted with some delay (100ms) (for some reason)
			setTimeout(function() {
				$(tableTools_obj.fnContainer()).find("a.DTTT_button").each(
						function() {
							var div = $(this).find("> div");
							if (div.length > 0)
								div.tooltip({
									container : "body"
								});
							else
								$(this).tooltip({
									container : "body"
								});
						});
			}, 200);

			//ColVis extension
			var colvis = new $.fn.dataTable.ColVis(oTable1, {
				buttonText : "<i class='fa fa-search'></i>",
				aiExclude : [ 0, 6 ],
				bShowAll : true,
				//"bRestore": true,
				sAlign : "right",
				fnLabel : function(i, title, th) {
					return $(th).text(); //remove icons, etc
				},
			});

			//style it
			$(colvis.button()).addClass("btn-group").find("button").addClass(
					"btn btn-white btn-info btn-bold");

			//and append it to our table tools btn-group, also add tooltip
			$(colvis.button()).prependTo(".tableTools-container .btn-group")
					.attr("title", "Show/hide columns").tooltip({
						container : "body"
					});

			//and make the list, buttons and checkboxed Ace-like
			$(colvis.dom.collection)
					.addClass(
							"dropdown-menu dropdown-light dropdown-caret dropdown-caret-right")
					.find("li").wrapInner('<a href="javascript:void(0)" />') //'A' tag is required for better styling
					.find("input[type=checkbox]").addClass("ace").next()
					.addClass("lbl padding-8");

			/////////////////////////////////
			//table checkboxes
			$("th input[type=checkbox], td input[type=checkbox]").prop(
					"checked", false);

			//select/deselect all rows according to table header checkbox
			$("#dynamic-table > thead > tr > th input[type=checkbox]").eq(0)
					.on(
							"click",
							function() {
								var th_checked = this.checked; //checkbox inside "TH" table header

								$(this).closest("table").find("tbody > tr")
										.each(function() {
											var row = this;
											if (th_checked)
												tableTools_obj.fnSelect(row);
											else
												tableTools_obj.fnDeselect(row);
										});
							});

			//select/deselect a row when the checkbox is checked/unchecked
			$("#dynamic-table").on(
					"click",
					"td input[type=checkbox]",
					function() {
						var row = $(this).closest("tr").get(0);
						if (!this.checked)
							tableTools_obj.fnSelect(row);
						else
							tableTools_obj.fnDeselect($(this).closest("tr")
									.get(0));
					});

			$(document).on("click", "#dynamic-table .dropdown-toggle",
					function(e) {
						e.stopImmediatePropagation();
						e.stopPropagation();
						e.preventDefault();
					});

			//And for the first simple table, which doesn't have TableTools or dataTables
			//select/deselect all rows according to table header checkbox
			var active_class = "active";
			$("#simple-table > thead > tr > th input[type=checkbox]").eq(0).on(
					"click",
					function() {
						var th_checked = this.checked; //checkbox inside "TH" table header

						$(this).closest("table").find("tbody > tr").each(
								function() {
									var row = this;
									if (th_checked)
										$(row).addClass(active_class).find(
												"input[type=checkbox]").eq(0)
												.prop("checked", true);
									else
										$(row).removeClass(active_class).find(
												"input[type=checkbox]").eq(0)
												.prop("checked", false);
								});
					});

			//select/deselect a row when the checkbox is checked/unchecked
			$("#simple-table").on("click", "td input[type=checkbox]",
					function() {
						var $row = $(this).closest("tr");
						if (this.checked)
							$row.addClass(active_class);
						else
							$row.removeClass(active_class);
					});

			/********************************/
			//add tooltip for small view action buttons in dropdown menu
			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});

			//tooltip placement on right or left
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest("table");
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return "right";
				return "left";
			}
		});
		function updateImage(fileInput, imgindex) {
			var img = document.querySelector("#" + imgindex);
			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					img.src = e.target.result;
				};
				reader.readAsDataURL(fileInput.files[0]);
			}
		}
	</script>
	<script>
		$(document)
				.ready(
						function() {
							// Thực hiện yêu cầu AJAX để lấy danh sách sản phẩm từ API
							$
									.ajax({
										url : 'http://localhost:8888/SkylineShop/api/products',
										type : 'GET',
										dataType : 'json',
										success : function(response) {

											displayProducts(response);
										},
										error : function(error) {
											console
													.error(
															'Error fetching product list:',
															error);
										}
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
									actionCell
											.append('<div class="hidden-sm hidden-xs action-buttons">'
													+ '<a class="green" href="#"> <i class="ace-icon fa fa-pencil bigger-130"></i></a>'
													+ '<a class="red" href="#"> <i class="ace-icon fa fa-trash-o bigger-130"></i></a>'
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