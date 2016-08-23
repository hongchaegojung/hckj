<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<script src="${pageContext.request.contextPath}/js/join.js"></script>

<div class="content">
	<form name="joinform" action="" method="post" onsubmit="return check()">
		<table class="myInfoEdit" width="80%">
			<tr>
				<th colspan="100%">
					<div class="join-title"><span>개인정보수정</span></div>
				</th>
			</tr>
			<tr>
				<td colspan=2>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					이름
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="NAME" size="20" value="홍채고정"/>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					아이디
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					hongchaekojung
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					비밀번호
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="password" name="PWD" size="15"/>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					비밀번호 확인
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="password" name="PWD_CK" size="15" />
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
				&nbsp;&nbsp;&nbsp;
				(비밀번호는 문자와 숫자를 조합하여 2~12자리로 만들어 주세요)
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					생년월일
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="YEAR" size="4" maxlength="4" value="2016"/>
					년
					&nbsp;&nbsp;
					<input type="text" name="MONTH" size="1" maxlength="2" value="03"/>
					월
					&nbsp;&nbsp;
					<input type="text" name="DAY" size="1" maxlength="2" value="11"/>
					일	
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					성별
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="radio" name="GENDER" value="M" checked/>
					남
					&nbsp;&nbsp;
					<input type="radio" name="GENDER" value="W"/>
					여	
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					이메일 주소
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="EMAIL" size="25" value="railro@gmail.com"/>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					메일 수신 여부
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="radio" name="EMAIL_GET" value="YES" checked/>
					수신
					&nbsp;&nbsp;
					<input type="radio" name="EMAIL_GET" value="NO"/>
					수신 안함
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					관심분야
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<select name="INTEREST">
						<option>관심분야1</option>
						<option>관심분야2</option>
						<option>관심분야3</option>
						<option>관심분야4</option>
						<option>관심분야5</option>
						<option>관심분야6</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					휴대폰
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="PHONE" size="20" value="01022223333"/>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					우편번호
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="ZIPCODE1" size="6" 
						onkeypress="gNumCheck()" maxlength="3"/>
					- 
					<input type="text" name="ZIPCODE2" size="6" 
						onkeypress="gNumCheck()" maxlength="3" />&nbsp;&nbsp;
					<input type="button" name="zipcode" value="우편번호 검색" 
						onclick="openZipcode(this.form)" />
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					집주소
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="ADDRESS" size="50" value="집주소 예시"/>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;
					상세주소
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
					<input type="text" name="ADDRESS2" size="50" value="상세주소 예시"/>
				</td>
			</tr>
			<tr>
				<td class="btn" colspan="100%">
					<br />
					<input type="submit" value="확 인" />
					&nbsp;&nbsp;&nbsp;
					<input type="reset" value="다시쓰기" />
					&nbsp;&nbsp;&nbsp;
					<input type="button" onclick="javascript:history.go(-1)" value="취 소"/>
				</td>
			</tr>
		</table>
	</form>
</div>