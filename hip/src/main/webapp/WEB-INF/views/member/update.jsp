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
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("수정되었습니다!");
		location.href="memberinfo.do";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("수정이 되지 않았습니다!");
		history.back();
	</script>
</c:if>
</body>
</html>