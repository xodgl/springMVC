<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
</head>
<body>
<spring:hasBindErrors name="memerInfo" />
<form method="post">
   <label for="email">�̸���</label>: 
   <input type="text" name="email" id="email" value="${memberInfo.email}" />
   <form:errors path="memberInfo.email" /><br/>

   <label for="name">�̸�</label>: 
   <input type="text" name="name" id="name" value="${memberInfo.name}" />
   <form:errors path="memberInfo.name" /><br/>
   
   <label for="password">��ȣ</label>: 
   <input type="password" name="password" id="password" value="${memberInfo.password}" />
   <form:errors path="memberInfo.password" /><br/>
   
   <label for="password">Ȯ��</label>: 
   <input type="password" name="confirmPassword" id="confirmPassword" value="${memberInfo.confirmPassword}" />
   <form:errors path="memberInfo.confirmPassword" /><br/>
   
   <label>�ּ�</label>:�ּ�1 
   <input type="text" name="address.address1" value="${memberInfo.address.address1}" />
   <form:errors path="memberInfo.address.address1" /><br/>
   
   �ּ�2 <input type="text" name="address.address2" value="${memberInfo.address.address2}" />
   <form:errors path="memberInfo.address.address2" /><br/>
   
   �����ȣ <input type="text" name="address.zipcode" value="${memberInfo.address.zipcode}" />
   <form:errors path="memberInfo.address.zipcode" /><br/>
   <label>
   
   <input type="checkbox" name="allowNoti" value="true" ${memberInfo.allowNoti ? 'checked' : ''} />
   �̸����� �����մϴ�.
   </label><br/>
   
   <label for="birthday">����</label>: ����: YYYYMMDD, ��: 20140101 
   <input type="text" name="birthday" id="birthday" value='<fmt:formatDate value="${memberInfo.birthday}" pattern="yyyyMMdd" />'/>
   <form:errors path="memberInfo.birthday" /><br/>
   
   <input type="submit" value="����" /> 
</form>
</body>
</html>