<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<html>
<head>
<link href="${pageContext.request.contextPath}/css/<tiles:getAsString name="css"/>" type="text/css" rel="stylesheet"/>
<script>
function formSubmit(){
	var forms = document.getElementById("findform");
	
	if ((forms.NAME.value=="") ||
		(forms.NAME.value.length<=1)){
		alert("이름을 정확히 입력해 주세요.");
		forms.NAME.focus();
        return false;
	}else if((forms.PHONE.value=="") ||
			(forms.PHONE.value.length<11)){
		alert("휴대폰 번호를 정확히 입력해 주세요.");
   		forms.PHONE.focus();
        return false;
	}
	
	return true;
}
</script>
</head>
<body>
	<form action="" method="post" name="findform" onSubmit="return formSubmit();">
		<table width="80%">
			<tr>
				<th align="center" colspan="100%">
					<b>아이디/비밀번호 찾기</b>
				</th>
			</tr>
			<tr>
				<td align="left" colspan="100%">
					이름과 휴대폰 번호를 정확히 입력하세요.
				</td>
			</tr>
			<tr>
				<td>
					이름
				</td>
				<td>
					&nbsp;
					<input type="text" name="NAME" maxlength="12" size="14">
				</td>
			</tr>
			<tr>
				<td>
					휴대폰 번호
				</td>
				<td>
					&nbsp;
					<input type="text" name="PHONE" maxlength="11" size="20" />
				</td>
			</tr>
			<tr>
				<td class="btn" colspan="100%">
					<input type="submit" value="확인">
				</td>
			</tr>				
		</table>
	</form>	
</body>
</html>