<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title /></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="description" content="Static &amp; Dynamic Tables" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<!-- bootstrap & fontawesome -->
	<link href="<c:url value='/template/admin/css/bootstrap.min.css'/>" rel="stylesheet" />
	<link href="<c:url value='/template/admin/font-awesome/4.2.0/css/font-awesome.min.css'/>" rel="stylesheet" />
	
	<!-- text fonts -->
    <link href="<c:url value='/template/admin/fonts/fonts.googleapis.com.css'/>" rel="stylesheet" />
	
	<!-- ace styles -->
	<link href="<c:url value='/template/admin/css/ace.min.css'/>" rel="stylesheet" class="ace-main-stylesheet" id="main-ace-style"/>
	
	<script src="<c:url value='/template/admin/js/ace-extra.min.js'/>"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>

	<%@ include file="/common/admin/header.jsp"%>

	<dec:body />
	
	<%@ include file="/common/admin/footer.jsp"%>

	<!-- Bootstrap core JavaScript-->
<%-- 	<script src="<c:url value='/template/admin/js/jquery.2.1.1.min.js'/>"></script> --%>
	<script src="<c:url value='/template/admin/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/jquery.dataTables.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/jquery.dataTables.bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/dataTables.tableTools.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/dataTables.colVis.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/ace-elements.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/ace.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/jquery-ui.custom.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/jquery.ui.touch-punch.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.easypiechart.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.sparkline.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.flot.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.flot.pie.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.flot.resize.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.min.js'/>"></script>
</body>
</html>