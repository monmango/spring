<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>searchForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="ajaxsrc/jquery02.js"></script>
<style type="text/css">
table, td, th {
	border: 1px solid;
	border-collapes: collapse;
}

table {
	width: 80%;
	margin: auto;
}

th{
	background-color: yellow;
}
</style>
</head>
<body>
	<span>검색이름</span>
	<input type="text" name="data" id="data" />
	<input type="button" value="commit" id="btn" />
	<table id="wrap"></table>
</body>
</html>