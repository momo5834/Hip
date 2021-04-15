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
	list-style: none;
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
		<ul><li><a href="productlist.do?pnum=O">OUTER</a>
			<ul><li><a href="productlist.do?pnum=O0">PADDING</a></li></ul>
			<ul><li><a href="productlist.do?pnum=O1">COAT</a></li></ul>
			<ul><li><a href="productlist.do?pnum=O2">JAKET</a></li></ul>
		</li></ul>
		<ul><li><a href="productlist.do?pnum=T">TOP</a>
			<ul><li><a href="productlist.do?pnum=T0">SHIRT</a></li></ul>	
			<ul><li><a href="productlist.do?pnum=T1">1/2 T-SHIRT</a></li></ul>
			<ul><li><a href="productlist.do?pnum=T2">T-SHIRT</a></li></ul>
			<ul><li><a href="productlist.do?pnum=T3">HOODY</a></li></ul>
			<ul><li><a href="productlist.do?pnum=T4">KNIT</a></li></ul>
		</li>
		</ul>
	<ul><li><a href="productlist.do?pnum=B">BOTTOM</a>
		<ul><li><a href="productlist.do?pnum=B0">DENIM</a></li></ul>
		<ul><li><a href="productlist.do?pnum=B1">SLACKS</a></li></ul>	
		<ul><li><a href="productlist.do?pnum=B2">SHORT PANTS</a></li></ul>
		<ul><li><a href="productlist.do?pnum=B3">COTTON PANTS</a></li></ul>
	</li></ul>
	<ul><li><a href="productlist.do?pnum=S">SHOES</a>
		<ul><li><a href="productlist.do?pnum=S0">SNIKERS</a></li></ul>
		<ul><li><a href="productlist.do?pnum=S1">BOOTS</a></li></ul>
		<ul><li><a href="productlist.do?pnum=S2">LOAFERS</a></li></ul>
	</li></ul>
	<ul><li><a href="productlist.do?pnum=A">ACC</a></li></ul>
</div>
</nav>
</header>
</body>
</html>