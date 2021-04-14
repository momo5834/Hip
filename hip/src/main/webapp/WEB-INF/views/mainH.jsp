<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.member-item {
	float: right;
	height: 5%;
	margin-right: 30px;
}

.util {
	float: left;
	margin-bottom: 45px;
}

.util li {
	float: left;
	font-size: 12px;
	color: #666;
	list-style: none;
	
}

.util li:after {
	content: "";
	display: inline-block;
	margin: 0 8px;
	width: 1px;
	height: 8px;
	background: gray;
}

.util li:last-child:after {
	display: none;
}

.product-item {
	margin: 10px;
	padding: 5px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<header>
<div>
	<ul class="member-item">
	<c:if test="${id == null}">
	<li><a href="loginForm.do">로그인</a></li>
	<li><a href="joinForm.do">회원가입</a></li>
	</c:if>
	<c:if test="${id != null }">
	<li><a href="logout.do">로그아웃</a></li>
	<li><a class="glyphicon glyphicon-cog"
		 href="memberinfo.do"> 회원정보</a></li>
	<li><a href="orders.do">주문 내역</a></li>
	</c:if>
	</ul>
	<ul class="util">
		<li><a href="reviewboard.do">후기</a></li>
		<li><a href="boardlist.do">자유게시판</a></li>
		<li><a href="noticeboard.do">공지사항</a></li>
	</ul>
</div>
<nav class="nav navber product-item">
	<div class="container" align="center">
		<a href="productlist.do">OUTER</a>
		<a href="productlist.do">TOP</a>
		<a href="productlist.do">BOTTOM</a>
		<a href="productlist.do">SHOES</a>
		<a href="productlist.do">ACC</a>
</div>
</nav>
</header>
</body>
</html>