<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̺�Ʈ ���</title>
</head>
<body>
	<form>
		<label>
			<input type="checkbox" name="allType" value="true"> ��ü
		</label>
		<c:forEach var="eventType" items="${eventTypes}">
			<label>
				<input type="checkbox" name="types" value="${eventType}"> ${eventType}
			</label>
		</c:forEach>
		������: <input type="text" name="from"/> 
		~<input type="text" name="to"/>
		<input type="submit" value="�˻�"/>
	</form>
	���� ���µ� �̺�Ʈ:
	<ul>
		<c:forEach var="event" items="${eventList}">
			<li>
				<a href="/springMVC/event/detail?id=${event.id}">
					${event.name} [${event.type}] 
				</a>
			</li>
		</c:forEach>
	</ul>
	��õ �̺�Ʈ: 
	<ul>
		<c:forEach var="event" items="${recEventList}">
			<li>
				<a href="/springMVC/event/detail?id=${event.id}">
					${event.name}
				</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>