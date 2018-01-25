<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="nam.seungchang.ums.service.UserService" %>
<%@ page import="nam.seungchang.ums.service.UserServiceImpl" %>
<%
	String userNo = request.getParameter("userNo");
	if(userNo != null && !userNo.equals("")){
		UserService userService = new UserServiceImpl();
		userService.secede(Integer.parseInt(userNo));
%>
	<c:redirect url="../main.jsp?msgId=31"/>
<%
	}else{
%>
	<c:redirect url="../main.jsp?msgId=30"/>
<%
	}
%>