<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainH.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function Chk() {
		if (frm.password.value != frm.passCon.value) {
			alert("비밀번호를 다시 확인헤주세요!");
			frm.password.focus();
			frm.password.value="";
			return false;
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
	<h2 class="text-success">회원 정보 수정</h2>
	<form action="update.do" name="frm" onsubmit="return Chk()">
		<table class="table table-hover">
			<tr><td>아이디</td><td><input type="text" name="id"
				 readonly="readonly" value="${member.id}"></td></tr>
			<tr><td>비밀번호</td><td><input type="password" name="password"
				 required="required"></td></tr>
		    <tr><td>비밀번호 확인</td><td><input type="password" name="passCon"
				 required="required"></td></tr>
			<tr><td>이름</td><td><input type="text" name="name"
				 value="${member.name }"></td></tr>
			<tr><td>이메일</td><td><input type="email" name="email"
				 value="${member.email }"></td></tr>
			<tr><td>전화번호</td><td><input type="tel" name="tel"
				 value="${member.tel }"></td></tr>
			<tr><td>주소</td><td><input type="text" name="addr"
				 value="${member.addr }"></td></tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="수정">
				<input type="reset" value="다시 작성"></td></tr>
		</table>
	</form>
</div>
</body>
</html>