<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="summernote/summernote.min.css" rel="stylesheet">

<script src="js/jquery-3.6.0.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="summernote/summernote.min.js"></script>
<script src="js/gsap/gsap.min.js"></script>

<link href="css/layout.css" rel="stylesheet">
</head>
<header id="header">
	<h1 id="logo"><a href="BoardList.do">Movie Ticket</a></h1>
	<nav id="gnb">
		<c:choose>
			
			<c:when test="${loggedMemberInfo!=null }">
				<ul>
					<li>${loggedMemberInfo.name}님 환영합니다.</li>
					<li><a href="MemberInfo.do?no=${loggedMemberInfo.no}">회원정보수정</a></li>
					<li><a href="BoardWriteForm.do">글쓰기</a></li>
					<c:if test="${loggedMemberInfo.grade <= 2}">
						<a href="MemberList.do">회원 관리</a>
						<a href="InsertMovieForm.do">영화정보입력</a>
						<a href="ListMovieAdmin.do">영화리스트보기</a>
						
					</c:if>
					<li><a href="MemberLogOut.do">로그아웃</a></li>
					<%-- <li>${loggedMemberInfo.name}</li> --%>
					
				</ul>
				
			</c:when>
			
			
			
		</c:choose>
	</nav>
</header>
<body>

</body>
</html>