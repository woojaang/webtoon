<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>webtoon</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		
		$(function () {
			$("#findBtn").click(function() {
				location.href="/find"
			})
			
		})
	</script>
</head>

<body>
    <div class="jumbotron text-center mb-5 bg-white">
        <h1 class="text-lg-center">웹툰 뭐볼까?</h1>
    </div>
    <div class="container-fluid p-5 mb-5 bg-light">
		<h2 class="text-center">원하는 플랫폼을 선택하세요!</h2>
        <p class="text-center mb-5">추후 다양한 플랫폼을 추가할 예정입니다..</p>
		<div class="text-center">
			<button id="findBtn" type="button"
				class="btn btn-outline-success btn-lg mr-5">네이버 웹툰</button>
			<button type="button" class="btn btn-outline-secondary btn-lg">추가
				예정..</button>
		</div>
	</div>
</body>
</html>