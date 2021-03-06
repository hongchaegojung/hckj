<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:getAsString name="title"/></title>
	<link href="${pageContext.request.contextPath}/css/layout.css" type="text/css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/css/<tiles:getAsString name="css"/>" type="text/css" rel="stylesheet"/>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js"></script>
</head>
<body>
	<div class="wrap">
		<!-- 헤더부분 -->
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		
		<!-- 메뉴 탭 부분 -->
		<tiles:insertAttribute name="nav"></tiles:insertAttribute>
		
		<!-- 컨텐츠부분 -->
		<div class="container">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
		
		<!-- 푸터부분 -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
</body>
</html>
