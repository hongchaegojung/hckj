<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="content">
	<div class="setting">
		<div class="limit-setting">
			<form action="noticeList.htm" method="get">
				<select name="limit" onchange="this.form.submit()">
					<option value="5">5</option>
					<option value="10" selected="selected">10</option>
					<option value="15">15</option>
					<option value="20">20</option>
				</select>
				개씩 보기
			</form>
		</div>
		<span>글 개수 : <b>${listCount}</b></span>
	</div>
	
	<form name="listForm" action="noticeList.htm">
		<input type="hidden" name="pageNo" value="" />
		
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
			<c:forEach var="notice" items="${noticeList}">
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
		
		
		<%-- <security:authorize url="/admin">
			<li><a href="/admin">관리자</a></li>
		</security:authorize> --%>
		
		<%-- <security:authorize access="hasRole('ROLE_USER')">
		    This text is only visible to a user
		    <br/>
		</security:authorize>
		<security:authorize access="hasRole('ROLE_ADMIN')">
		    This text is only visible to an admin
		    <br/>
		</security:authorize> --%>
		
		
<%-- 원본 		<security:authorize ifAllGranted="ROLE_USER">
		<div class="register-btn" align="right">
			<span><a href="javascript:void(0)" onclick="location.href='noticeReg.htm'">글쓰기</a></span>
		</div>
		</security:authorize> --%>
		
	<%-- 	<security:authorize access="hasRole('ROLE_USER')">
		    This text is only visible to a user
		    <br/>
		</security:authorize>
		<security:authorize access="hasRole('ROLE_ADMIN')">
		    <div class="register-btn" align="right">
				<span><a href="javascript:void(0)" onclick="location.href='noticeReg.htm'">글쓰기</a></span>
			</div>
		</security:authorize>  --%>
		
		<security:authorize url="/admin">
			<div class="register-btn" align="right">
				<span><a href="javascript:void(0)" onclick="location.href='noticeReg.htm'">글쓰기</a></span>
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
		<form action="noticeList.htm" method="get">
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

