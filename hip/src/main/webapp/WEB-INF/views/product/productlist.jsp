<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainH.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
	<c:if test="${empty list}">
		<div align="center">데이터가 없습니다</div>
	</c:if>
	<c:if test="${not empty list}">
		<c:forEach var="p" items="${list}">
			<div>
				
			</div>
		</c:forEach>
	</c:if>
<a class="btn btn-sm btn-default" href="productinsertForm.do">상품 등록</a>
</div>
</body>
</html>