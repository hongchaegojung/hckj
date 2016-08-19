<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="content">
	<div class="setting">
		<div class="limit-setting">
			<form action="" method="get">
				<select name="limit" onchange="limit_submit()">
					<option value="5">5</option>
					<option value="10" selected="selected">10</option>
					<option value="15">15</option>
					<option value="20">20</option>
				</select>
				개씩 보기
			</form>
		</div>
		<span>글 개수 :</span>
	</div>
	<table class="list" width="100%">
		<tr class="list-col" align="center" valign="middle">
			<td width="10%">
				<div align="center">번호</div>
			</td>
			<td width="20%">
				<div align="center">분류</div>
			</td>
			<td width="40%">
				<div align="center">제목</div>
			</td>
			<td width="10%">
				<div align="center">작성자</div>
			</td>
			<td width="15%">
				<div align="center">날짜</div>
			</td>
			<td width="8%">
				<div align="center">조회수</div>
			</td>
		</tr>
		<tr class="list_contents" align="center" valign="middle"
			onmouseover="this.style.backgroundColor='#E8E8E8'"
			onmouseout="this.style.backgroundColor=''">
			<td>
				<div align="center">1</div>
			</td>
			<td>
				<div align="center">분류명</div>
			</td>	
			<td>
				<div align="left">글제목ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ</div>
			</td>
			<td>
				<div align="center">수빈</div>
			</td>
			<td>
				<div align="center">2016/01/13</div>
			</td>	
			<td>
				<div align="center">34</div>
			</td>
		</tr>
	</table>
	<div class="register-btn" align="right">
		<a href="">글쓰기</a>
	</div>
	<div class="paging" align="center">
	이전&nbsp;다음
	</div>
	<div class="search" align="center">
		<form action="" method="get">
			<select name="keyField">
				<option value="BOARD_NUM">번호</option>
				<option value="BOARD_ID">작성자</option>
				<option value="BOARD_SUBJECT">제목</option>
				<option value="BOARD_SUBJECT">분류</option>
			</select>
			<input type="text" name="keyWord"/>
			<input class="submit" type="submit" value="검색"/>
		</form>
	</div>
</div>
