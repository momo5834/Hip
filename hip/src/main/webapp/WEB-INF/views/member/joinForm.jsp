<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../mainH.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function Chk() {
		if (frm.password.value != frm.passCon.value) {
			alert("패스워드를 다시 확인해주세요!");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	}
		function idChk() {
			if (!frm.id.value) {
				alert("아이디를 입력하세요!");
				return false;
			}
			$.post("idChk.do", "id=" + frm.id.value, function(data) {
				$('#disp').html(data);
			});
		}
</script>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-succece">회원가입</h2>
		<form action="join.do" method="post" onsubmit="return Chk()" name="frm">
			<table class="table table-hover">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" required="required">
						<input type="button" onclick="idChk()" value="중복확인"
						class="btn btn-sm btn-default">
						<div id="disp" class="err"></div></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passCon"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="tel" name="tel" pattern="(010)-\d{3,4}-\d{4}"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="addr"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="가입하기"> <input type="reset" value="다시 작성"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>