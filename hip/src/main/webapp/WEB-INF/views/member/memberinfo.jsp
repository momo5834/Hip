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
	<h2 class="text-success">회원 정보 관리</h2>
	<div><a href="UpdateForm.do?id=${member.id}" class="btn btn-sm btn-default glyphicon glyphicon-pencil"> 정보수정</a></div>
	<div><a href="memberDelete.do?id=${member.id }" class="btn btn-sm btn-default glyphicon glyphicon-trash"> 회원탈퇴</a></div>
</div>
</body>
</html>