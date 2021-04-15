<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainH.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function productChange_top(p) {
		var o_outer=["PADDING","COAT","JAKET"];
		var t_top=["SHIRT","1/2 T=SHIRT","T-SHIRT","HOODY","KNIT"];
		var b_bottom=["DENIM","SLACKS","SHORT PANTS","COTTON PANTS"];
		var s_shoes=["SNIKERS","BOOTS","LOAFERS"];
	
		var mid_option=document.getElementByID("product_middle");
		
		if (p.value=="O") var m = o_outer;
		else if (p.value=="T") var m = t_top;
		else if (p.value=="B") var m = b_bottom;
		else if (p.value=="S") var m = s_shoes;
		mid_option.options.length=0;
		
		var count=1;
		var opt = document.createElement("option");
			opt.value="";
			mid_option.appendChild(opt);
		for (x in m) {
			var opt=document.createElement("option");
			opt.value=p.value+x;
			opt.innerHTML=m[x];
			mid_option.appendChild(opt);
		}
	}
	function pnumValue() {
		var pval=productChange_top.value;
		document.getElementById('pnum').value=pval;
	}
</script>
<script type="text/javascript"> // 값 확인 
	function valchk() {
		var pnum=frm.pnum.value;
		var pname=frm.pname.value;
		var price=frm.price.value;
		var pcount=frm.pcount.value;
		var pcontents=frm.pcontents.value;
		var fileName=frm.fileName.value;
		alert("pnum :"+pnum+"\r\npname : "+pname+"\r\nprice :"+price+"\r\npcount :"
				+pcount+"\r\npcontents :"+pcontents+"\r\n 이미지 : "+fileName+
				"\r\n끝");
	}

</script>
</head>
<body>
<div class="container" align="center">



	<h2 class="text-success">상품 등록</h2>
	<form action="productinsert.do" method="post" enctype="multipart/form-data" name="frm">
		<table>
				<tr>
					<td>상품 분류</td>
					<td><select name="product_top" id="product_top" class="product_select_top"
						onchange="productChange_top(this)" required="required">
							<option value="O">OUTER</option>
							<option value="T">TOP</option>
							<option value="B">BOTTOM</option>
							<option value="S">SHOES</option>
							<option value="A">ACC</option>
					</select> 
					<select name="pnum" id="product_middle" onchange="pnumValue(this)"
						class="product_select_middle">
					</select></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" name="pname" required="required"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price" required="required"></td>
				</tr>
				<tr>
					<td>상품 설명</td>
					<td><textarea name="pcontents" cols="40" rows="5"></textarea></td>
				</tr>
				<tr>
					<td>상품 사진</td>
					<td><input type="file" name="fileName" required="required"></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="number" name="pcount" required="required">
						<button onclick="valchk()" value="값 확인"></button></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록">
						<input type="reset" value="다시 작성"></td>
				</tr>
			</table>
	</form>
</div>
</body>
</html>