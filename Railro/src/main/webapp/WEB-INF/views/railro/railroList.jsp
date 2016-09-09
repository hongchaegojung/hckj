<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<div class="content">
	<div class="setting">
		<div class="limit-setting">
			<form action="railroList.htm" method="get">
				<select name="limit" onchange="this.form.submit()">
					<option value="5">5</option>
					<option value="10" selected="selected">10</option>
					<option value="15">15</option>
					<option value="20">20</option>
				</select>
				개씩 보기
			</form>
		</div>
		<span>글 개수 : <b> ${listCount}</b></span>
	</div>
	
	<form name="listForm" action="railroList.htm">
		<input type="hidden" name="pageNo" value="" />
	
		<table class="list" width="100%">
			<tr class="list-col" align="center" valign="middle">
				<td width="10%">
					<div align="center">번호</div>
				</td>
				<td width="10%">
					<div align="center">분류</div>
				</td>
				<td width="50%">
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
			
			<c:forEach var="railro" items="${railroList}">
				<tr class="list_contents" align="center" valign="middle"
					onmouseover="this.style.backgroundColor='#fcfcfc'"
					onmouseout="this.style.backgroundColor=''">
					<td>
						<div align="center">${railro.ID}</div>
					</td>
					<td>
						<div align="center">${railro.SUBJECT}</div>
					</td>	
					<td>
						<a href ="railroDetail.htm?ID=${railro.ID}">
							<div align="left">${railro.TITLE} </div>
						</a>
					</td>
					<td>
						<div align="center">${railro.WRITER}</div>
					</td>
					<td>
						<div align="center">${railro.REGDATE}</div>
					</td>	
					<td>
						<div align="center">${railro.HIT}</div>
					</td>
				</tr>
			</c:forEach>	
			
		</table>
		
	<security:authorize ifAllGranted="ROLE_USER">
		<div class="register-btn" align="right">
			<span><a href="javascript:void(0)" onclick="location.href='railroReg.htm'">글쓰기</a></span>
		</div>
	</security:authorize>
		
		<div class="paging" align="center">
			<jsp:include page="../inc/paging.jsp" flush="true">
				<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
				<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
				<jsp:param name="startPageNo" value="${paging.startPageNo}" />
				<jsp:param name="pageNo" value="${paging.pageNo}" />
				<jsp:param name="endPageNo" value="${paging.endPageNo}" />
				<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
				<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
			</jsp:include>
		</div>
	
	</form>	
	<div class="search" align="center">
		<form action="railroList.htm" method="post">
			<select name="keyField">
				<option value="ID">번호</option>
				<option value="WRITER">작성자</option>
				<option value="TITLE">제목</option>
				<option value="SUBJECT">분류</option>
			</select>
			<input type="text" name="keyWord"/>
			<input class="submit" type="submit" value="검색"/>
		</form>
	</div>
</div>