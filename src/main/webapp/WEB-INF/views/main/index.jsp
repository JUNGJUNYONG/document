<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html>
<head>
<title>virus19 | main</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/jquery/jquery-3.4.1.js"></script>
<script src="./assets/js/app.js"></script>
</head>
<body>
	<div id="container">
		<div id='header'>
			<div id='search'>
				<form id='search-form' action=''>
					<input type='text' name='input-search' id='input-search' placeholder='검색어를 입력하세요'/>
					<input type='submit' value='검색'/>
				</form>
			</div>
			
			<div id='right-header'>
			</div>
		</div>
		
		<div id='contents'>
			<div id='contents-header'></div>
			<div id='contents-memo'></div>
			
		</div>
		
		<div id='navigation'>
		
		</div>
		
		<div id="content">

			<div id="user">
				<h1>main</h1>
				<form class=''></form>
			</div>
		</div>
		<c:import url="/WEB-INF/views/includes/footer.jsp" />
	</div>
</body>
</html>