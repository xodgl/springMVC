<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 상세</title>
</head>
<body>
   <ul>
      <li>ID: ${member.id}</li>
      <li>이름: ${member.name}</li>
      <li>주소: ${member.address.address1}${member.address.address2}(우편번호: ${member.address.zipcode})</li>
   </ul>
</body>
</html>