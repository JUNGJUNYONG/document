<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html>
<head>
<title>virus19 | main</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/jquery/jquery-3.4.1.js"></script>
<script src="./assets/js/app.js"></script>
<script src="https://kit.fontawesome.com/e2284cc738.js" crossorigin="anonymous"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.header {
	width: 100%;
	display: flex;
	padding: 10px 10px 3px 0;
	border-bottom: 0.1em solid rgba(0, 0, 0, .2);
	flex-flow: row nowrap;
}

.logo-div {
	text-align: center;
	width: 11%;
}

.logo {
	width: 50px;
	height: 50px;
}

.logo-header-title p {
	color: #4C71DD;
	background: linear-gradient(180deg,#4e73df 10%,#224abe 100%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-weight: bold;
	font-family: 'Product Sans',Arial,sans-serif;
	padding-top: 0.5rem;
}

.search-form{
	width: 22%;
	margin: 0 0 0 1rem;
	display: inline-block!important;
}
.right-header{
	width: 64%;
	margin: 1.2rem 2rem 1.2rem 0;
    display: flex;
    align-items: center;
    flex-flow: row-reverse;
}

.search{
	width: auto;
    display: flex;
    margin-top: 1.2rem;
    padding-left: 10px;
    padding-right: 10px;
}

.input-search{
	flex: 1 1 auto;
    height: 37px;
    border: 0!important;
    background-color: #f8f9fc!important;
    font-size: .85rem;
    padding: 0 .75rem;
}

.search-submit{
	left: -1;
	cursor: pointer;
	border: 1px solid transparent;
	background-color: #4e73df;
    border-color: #4e73df;
    width: 2rem;
    border-radius: .35rem;
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
}
.fa-hashtag:before{
    color: #fff;
    font-size: large;
}
.fa-plus:before, .fa-bell:before {
	font-size: xx-large;
	color: #3a3b45;
}
.header-addmemo, .header-profile, .header-bell{
	margin-left: 1rem;
}

.navigation {
	display: block;
	width: 11%;
	height: 100%;
	background-image: linear-gradient(180deg,#4e73df 10%,#224abe 100%);
	padding-top: 10px;
	position: fixed;
}

.navigation li {
	border-radius: 0 25px 25px 0;
	height: 50%;
	text-align: center;
	color: #fff;
	border-bottom: 0.1em solid rgba(0, 0, 0, .2);
	margin-top: 3px;
}
.navigation li a{
	padding: .3rem 0;
    margin: 0.5rem 0;
}

.navigation li div {
	display: block;
	margin: 0.7rem 1rem;
	background-color: #fff;
	position: relative;
    font-size: .85rem;
    border-radius: .35rem!important;
    line-height: 1.5;
    color: #3a3b45;
}

.navigation li div a {
	display:block
}

.contents, .contents-memo {
	display: inline-block;
	min-width: 0;
	width: 89%;
	float: right;
	background: transparent;
}

.contents-header {
	height: 10%;
}

.contents-memo {
	height: 90%;
}

.footer {
	width: 89%;
	right: 0px;
	position: absolute;
	bottom: 0px;
}
</style>
</head>
<body>
	<div id="container">
		<div class="header">
			<div class="logo-div">
				<div class='logo-header'>
					<img class='logo'
						src="${pageContext.request.contextPath }/assets/images/logo.png" />
				</div>
				<div class='logo-header-title'>
					<p>ShareEditor.Md</p>
				</div>
			</div>
			
			<form class='search-form' action=''>
				<div class='search'>
					<input type='text' name='input-search'
						class='input-search' placeholder='검색어를 입력하세요' /> 
					<button type='submit' class='search-submit' value='검색'>
						<i class="fas fa-hashtag"></i>
					</button>
				</div>
			</form>

			<div class='right-header'>
				<div class='header-bell'>
					<a href='#'><i class="far fa-bell"></i></a>
				</div>
				
				<div class='header-profile'>
					<a href='#'><img src="" /></a>
				</div>
				
				<div class='header-addmemo'>
					<a href='#'><i class="fas fa-plus"></i></a>
				</div>
			</div>
			
		</div>
	</div>
	<div class='navigation'>
		<ul>
			<li><a>개인메모</a>
				<div>
					<h6>Hashtag</h6>
					<a>해쉬테그</a>
					<a>해쉬테그2</a>
				</div>
			</li>
			<li>그룹메모
				<div>
					<h6>Hashtag</h6>
					<a>해쉬테그</a>
				</div>
				<div>
					<h6>Group</h6>
					<a>그룹1.</a>
					<a>그룹2.</a>
				</div>
			</li>
		</ul>
	</div>

	<div class='contents'>
		<div class='contents-header'>
			<div id='contents-header-title'>
				<h3>
					<개인1>
				</h3>
			</div>
			<div id='contents-header-showinglist'>
				<a href='#'>showinglist</a>
			</div>
			<div id='contents-header-addgroup'>
				<a href='#'>addgroup</a>
			</div>
			<div id='contents-header-invite'>
				<a href='#'>invite</a>
			</div>
		</div>
		<div class='contents-memo'></div>
	</div>

	<div class="footer">
		<p>(c)opyright 2015, 2016, 2017, 2018, 2019, 2020</p>
	</div>
</body>
</html>