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
						<li class="active">Quản lý người dùng</li>
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
									<h3 class="header smaller lighter blue">Quản lý người dùng
									</h3>

									<div class="clearfix">
										<div class="pull-right tableTools-container"></div>
									</div>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModalCenter">
										Thêm mới tài khoản</button>
									<div class="modal fade" id="exampleModalCenter" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalCenterTitle"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLongTitle">
														Thêm mới tài khoản</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<form class="form-horizontal" role="form">
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Tên sản phẩm </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1"
																	placeholder="Tên sản phẩm" class="col-xs-10" />
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Giá </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1" placeholder="Giá"
																	class="col-xs-10" />
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Mô tả </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1"
																	placeholder="Mô tả " class="col-xs-10" />
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Ảnh </label>

															<div class="col-sm-9">
																<img id="img1"
																	style="height: 100px; width: 100px; margin: 10px;" />
																<input type="file" id="id-input-file-1"
																	onchange="updateImage(this,'img1')" /> <img id="img2"
																	style="height: 100px; width: 100px; margin: 10px;" />
																<input type="file" id="id-input-file-2"
																	onchange="updateImage(this,'img2')" /> <img id="img3"
																	style="height: 100px; width: 100px; margin: 10px;" />
																<input type="file" id="id-input-file-3"
																	onchange="updateImage(this,'img3')" />
															</div>
														</div>

														<div class="form-group">
															<label for="form-field-select-1"
																class="col-sm-3 me-2 control-label">Danh mục</label> <select
																class="col-sm-3" id="form-field-select-1">
																<option value=""></option>
																<option value="AL">Alabama</option>
																<option value="AK">Alaska</option>
																<option value="AZ">Arizona</option>
															</select>
														</div>

														<div class="form-group">
															<label for="form-field-select-1"
																class="col-sm-3 me-2 control-label">Brand</label> <select
																class="col-sm-3" id="form-field-select-1">
																<option value=""></option>
																<option value="AL">Alabama</option>
																<option value="AK">Alaska</option>
																<option value="AZ">Arizona</option>
															</select>
														</div>

														<div class="clearfix form-actions">
															<div class="col-md-offset-3 col-md-9">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Close</button>
																&nbsp; &nbsp; &nbsp;
																<button class="btn btn-info" type="button">
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
													<th>Thông tin</th>
													<th>Email</th>
													<th class="hidden-480">Số điện thoại</th>

													<th>Đơn hàng</th>
													<th class="hidden-480">Đơn hàng gần nhất</th>
													<th class="hidden-480">Tổng chi tiêu</th>
													<th></th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td class="center"><label class="pos-rel"> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">app.com</a></td>
													<td>$45</td>
													<td class="hidden-480">3,330</td>
													<td></td>
													<td>Feb 12</td>

													<td class="hidden-480"><span
														class="label label-sm label-warning">Expiring</span></td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="green" href="#" data-toggle="modal"
																data-target="#edỉtProduct"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<div class="modal fade" id="edỉtProduct" tabindex="-1"
																role="dialog" aria-labelledby="exampleModalCenterTitle"
																aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered"
																	role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModalLongTitle">
																				Chỉnh sửa người dùng</h5>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<form class="form-horizontal" role="form">
																				<div class="form-group">
																					<label
																						class="col-sm-3 control-label no-padding-right"
																						for="form-field-1"> Tên sản phẩm </label>

																					<div class="col-sm-9">
																						<input type="text" id="form-field-1"
																							placeholder="Tên sản phẩm" class="col-xs-10" />
																					</div>
																				</div>
																				<div class="space-4"></div>
																				<div class="form-group">
																					<label
																						class="col-sm-3 control-label no-padding-right"
																						for="form-field-1"> Giá </label>

																					<div class="col-sm-9">
																						<input type="text" id="form-field-1"
																							placeholder="Giá" class="col-xs-10" />
																					</div>
																				</div>

																				<div class="form-group">
																					<label
																						class="col-sm-3 control-label no-padding-right"
																						for="form-field-1"> Mô tả </label>

																					<div class="col-sm-9">
																						<input type="text" id="form-field-1"
																							placeholder="Mô tả " class="col-xs-10" />
																					</div>
																				</div>

																				<div class="form-group">
																					<label
																						class="col-sm-3 control-label no-padding-right"
																						for="form-field-1"> Ảnh </label>

																					<div class="col-sm-9">
																						<img id="img1"
																							style="height: 100px; width: 100px; margin: 10px;" />
																						<input type="file" id="id-input-file-1"
																							onchange="updateImage(this,'img1')" /> <img
																							id="img2"
																							style="height: 100px; width: 100px; margin: 10px;" />
																						<input type="file" id="id-input-file-2"
																							onchange="updateImage(this,'img2')" /> <img
																							id="img3"
																							style="height: 100px; width: 100px; margin: 10px;" />
																						<input type="file" id="id-input-file-3"
																							onchange="updateImage(this,'img3')" />
																					</div>
																				</div>

																				<div class="form-group">
																					<label for="form-field-select-1"
																						class="col-sm-3 me-2 control-label">Danh
																						mục</label> <select class="col-sm-3"
																						id="form-field-select-1">
																						<option value=""></option>
																						<option value="AL">Alabama</option>
																						<option value="AK">Alaska</option>
																						<option value="AZ">Arizona</option>
																					</select>
																				</div>

																				<div class="form-group">
																					<label for="form-field-select-1"
																						class="col-sm-3 me-2 control-label">Brand</label>

																					<select class="col-sm-3" id="form-field-select-1">
																						<option value=""></option>
																						<option value="AL">Alabama</option>
																						<option value="AK">Alaska</option>
																						<option value="AZ">Arizona</option>
																					</select>
																				</div>

																				<div class="clearfix form-actions">
																					<div class="col-md-offset-3 col-md-9">
																						<button type="button" class="btn btn-secondary"
																							data-dismiss="modal">Close</button>
																						&nbsp; &nbsp; &nbsp;
																						<button class="btn btn-info" type="button">
																							<i class="ace-icon fa fa-check bigger-110"></i>
																							Submit
																						</button>
																					</div>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
															<a class="red" href="#"> <i
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

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='<c:url value="/template/admin/js/jquery.min.js"/>'>"
								+ "<" + "/script>");
	</script>

	<script type="text/javascript">
		if ("ontouchstart" in document.documentElement)
			document
					.write("<script src='<c:url value="/template/admin/js/jquery.mobile.custom.min.js"/>'>"
							+ "<" +
            "/script>");
	</script>

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

			//,
			//"sScrollY": "200px",
			//"bPaginate": false,

			//"sScrollX": "100%",
			//"sScrollXInner": "120%",
			//"bScrollCollapse": true,
			//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
			//you may want to wrap the table inside a "div.dataTables_borderWrap" element

			//"iDisplayLength": 50
			});
			//oTable1.fnAdjustColumnSizing();

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
</body>
</html>