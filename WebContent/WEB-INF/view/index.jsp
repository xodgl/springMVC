<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>헬로우월드:
		<ul>
			<li><a href="hello.do2">/hello.do</a>:스프링MVC 일단 해 보기 HelloController.hello()</li>
			<li><a href="hello-raw.do2">/hello-raw.do</a>: void 리턴 타입 컨트롤러 메서드 HelloController.hello(HttpServletResponse)</li>
		</ul>
	</li>
</ul>

<li>모델 :
      <ul>
         <li><a href="event/list">/event/list</a>
         <li><a href="event/list2">/event/list2</a>
      </ul> 
</li>

	<ul>
	<li><a href="event/detail?id=1">event/detail?id=1</a>:HttpSe</li>
	<li><a href="event/detail2?id=1">event/detail2?id=1</a>: @Req</li>
	<li><a href="event/detail2">event/detail2</a>:	@RequestParam</li>
	
	<li><a href="search">search</a>
	:@RequestParam 필수 아님 설정, SearchController.search()</li>
	</ul>

<li>@RequestMapping, @PathVariable:
	<ul>
		<li><a href="member/regist">/member/regist</a>
		:GET/POST 예, RegistarationController</li>
		<li><a href="members">/members</a>
		:@PathVariable 사용 위한 목록 출력, MemberController.members()</li>
		<li><a href="members/m2">/members/m2</a>
		:@PathVariable 예, MemberController.memberDetail()</li>
		<li><a href="members/m2/orders/1">/members/m2/orders/1</a>
		:@PathVariable 예, MemberController.memberOrderDetail()</li>
		<li><a href="members/m2/orders/1a">/members/m2/orders/1a</a>
		:@PathVariable 400 응답 예, MemberController.memberOrderDetail()</li>
		<li><a href="files/a123">/files/a123</a>
		:@PathVariable 정규표현식, FileController.fileInfo()</li>
		<li><a href="files/a1">/files/a1</a>
		:@PathVariable 정규표현식 404, FileController.fileInfo()</li>
		<li><a href="folders/1/2/3/files">/files/1/2/3/files</a>
		:RequestMapping Ant패턴, FileController.list()</li>
	</ul>
</li>

<li>HTTP 세션:
	<ul>
	<li><a href="auth/login">/auth/login</a>:
	HttpServletRequest를 통해 HttpSession 사용, LoginController</li>
	<li><a href="auth/logout">/auth/logout</a>:
	HttpSession 직접사용, LogoutController</li>
	<li><a href="newevent/step1">/newevent/step1</a>
	:@SessionAttributes 사용, EventCreationController</li>
	</ul>
</li>	
<li>acl
	<ul>
		<li><a href="acl/list">/acl/aclList</a>: aclList
		<li><a href="acl/modify">/acl/list</a>:list
	</ul>
	</li>
</body>
</html>

























