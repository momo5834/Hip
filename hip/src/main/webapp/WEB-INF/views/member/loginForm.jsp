<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../mainH.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<form action="login.do">
			<table class="table table-hover">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" required="required"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" required="required"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" class="btn btn-sm btn-default"> <a
						class="btn btn-sm btn-default" href="joinForm.do">회원가입</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>