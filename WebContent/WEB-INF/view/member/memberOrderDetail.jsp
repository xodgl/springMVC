<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� �ֹ� ���</title>
</head>
<body>
${member.name}���� �ֹ� ���:
<ul>
   <c:forEach var="order" items="${orders}">
      <li><a href="${pageContext.request.contextPath}/members/${order.memberId}/orders/${order.id}">${order.id}</a></li>
   </c:forEach>
</ul>
</body>
</html>