<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="nam.seungchang.ums.domain.User" %>
<%@ page import="nam.seungchang.ums.service.UserService"%>
<%@ page import="nam.seungchang.ums.service.UserServiceImpl"%>
<%
	String userNo = request.getParameter("userNo");
	String userName = request.getParameter("userName");
	if((userNo != null && !userNo.equals(""))
		&&(userName != null && !userName.equals(""))){
	UserService userService = new UserServiceImpl();
	User user = new User();
	user.setUserNo(Integer.parseInt(userNo));
	user.setUserName(userName);
	userService.correct(user);
%>
	<c:redirect url="../main.jsp?msgId=21"/>
<%
	}else{
%>
	<c:redirect url="../main.jsp?msgId=20"/>
<%
	}
%>