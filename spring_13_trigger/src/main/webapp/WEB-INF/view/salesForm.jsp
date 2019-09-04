<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>salesForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<form name="frm" action="salesPro.do" method="get">
		<table>
			<caption>판매입력</caption>
			<tr>
				<th>상품코드</th>
				<td><select name="code">
						<c:forEach items="${aList }" var="dto">
							<option value="${dto }">${dto }
						</c:forEach>
				</select>
				<td>
			</tr>
			<tr>
				<th>판매수량</th>
				<td><input type="text" name="sacnt" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="commit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>