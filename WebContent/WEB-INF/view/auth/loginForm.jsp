<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 가입</title>
</head>
<body>
<form:form commandName="loginCommand">
<form:errors element="div" />
<label for="email">이메일</label>: 
<input type="text" name="email" id="email" value="${loginCommand.email}">
<form:errors path="email"/> <br>

<label for="password">암호</label>: 
<input type="password" name="password" id="password">
<form:errors path="password"/> <br>
<br/>

<input type="submit" value="로그인">

</form:form>
</body>
</html>