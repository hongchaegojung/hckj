<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="header-btn">
	
		<security:authorize ifNotGranted="ROLE_USER">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/member/login.htm'">로그인</button>
		</security:authorize>
	
		<security:authorize ifAnyGranted="ROLE_USER">
			<security:authentication property="name" var="loginUser"/>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/j_spring_security_logout'">
					(${loginUser}) 로그아웃
				</button>
				
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/member/mypage.htm?ID=?${loginUser}'">
					마이페이지 
				</button>	
		</security:authorize>
	
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/member/join.htm'">회원가입</button>

</div>		
<div class="header" onclick="location.href='${pageContext.request.contextPath}/index.htm'">
</div>

