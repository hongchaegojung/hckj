<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<span>글 개수 : <b>${sListCount}</b></span>
	</div>
	<table class="list" width="100%">
		<tr class="list-col" align="center" valign="middle">
			<td width="10%">
				<div align="center">번호</div>
			</td>
			<td width="60%">
				<div align="center">제목</div>
			</td>
			<td width="10%">
				<div align="center">작성자</div>
			</td>
			<td width="10%">
				<div align="center">날짜</div>
			</td>
			<td width="10%">
				<div align="center">조회수</div>
			</td>
		</tr>
		<c:forEach var="notice" items="${sNoticeList}">
			<tr class="list_contents" align="center" valign="middle"
				onmouseover="this.style.backgroundColor='#fcfcfc'"
				onmouseout="this.style.backgroundColor=''">
				<td>
					<div align="center">${notice.ID}</div>
				</td>	
				<td>
					<a href="noticeDetail.htm?ID=${notice.ID}">
						<div align="left">${notice.TITLE}</div>
					</a>
				</td>
				<td>
					<div align="center">${notice.WRITER}</div>
				</td>
				<td>
					<div align="center">${notice.REGDATE}</div>
				</td>	
				<td>
					<div align="center">${notice.HIT}</div>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div class="register-btn" align="right">
		<span><a href="javascript:void(0)" onclick="location.href='noticeReg.htm'">글쓰기</a></span>
	</div>
	<div class="paging" align="center">
	이전&nbsp;다음
	</div>
	<div class="search" align="center">
		<form action="noticeSearchList.htm" method="get">
			<select name="keyField">
				<option value="ID">번호</option>
				<option value="WRITER">작성자</option>
				<option value="TITLE">제목</option>
			</select>
			<input type="text" name="keyWord"/>
			<input class="submit" type="submit" value="검색"/>
		</form>
	</div>
</div>