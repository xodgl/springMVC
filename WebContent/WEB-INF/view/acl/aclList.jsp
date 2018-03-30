<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���: ${project}</title>
</head>
<body>
<form action="<c:url value='/acl/modify'/>" method="post">
	<table border="1">
	<tr>
		<td>ID</td> 
		<td>�б�</td> 
		<td>����</td> 
		<td>����</td> 
		<td>����</td> 
		<td>������</td> 
	</tr> 
	<c:forEach var="perm" items="${aclList}" varStatus="status">
	<tr><td>${perm.id}
		<input type="hidden" name="perms[${status.index}].id" value="${perm.id}"></td>
	<td><input type="checkbox" name="perms[${status.index}].canRead" value="true" ${perm.canRead ? 'checked' : '' }>
	<td><input type="checkbox" name="perms[${status.index}].canCreate" value="true" ${perm.canCreate ? 'checked' : '' }>
	<td><input type="checkbox" name="perms[${status.index}].canModify" value="true" ${perm.canModify ? 'checked' : '' }>
	<td><input type="checkbox" name="perms[${status.index}].canDelete" value="true" ${perm.canDelete ? 'checked' : '' }>
	<td><input type="checkbox" name="perms[${status.index}].removed" value="true" ${perm.removed ? 'checked' : '' }>
	</td></tr>
	</c:forEach>
	<tr>
		<td colspan="6">
			<input type="submit" value="����">
		</td>
	</tr>
	</table>

</form>
</body>
</html>