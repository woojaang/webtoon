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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">



<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	button[name="checked"] {
	color: rgb(255, 255, 255);
	background-color: rgb(40, 167, 69);
}
</style>



<script>
	let btn = "#schools, #actions"
	$(function() {
		$("#findBtn").click(function() {
			location.href = "/find"
		})
		$("#findBtn").attr("name", "checked")
		//$("input.form-check-input").css("display", "none");
		$(btn).click(function() {
			if ($(this).attr("name") == "checked") {
				$(this).attr("name", "")

			} else {
				$(this).attr("name", "checked")
			}

		})
		$("#submitBtn").click(function() {
			console.log("submit")
			$(btn["name=checked"]).each(function() {
				$(this).prev().prop('checked', true)
			})
			$("#submitTag").submit();
		})
		
	})
</script>
</head>

<body>
	<div class="jumbotron text-center mb-5">
		<h1 class="text-lg-center">웹툰 뭐볼까?</h1>
	</div>
	<div class="container p-5">
		<h2 class="text-center">원하는 플랫폼을 선택하세요!</h2>
        <p class="text-center">추후 다양한 플랫폼을 추가할 예정입니다..</p>
		<div class="text-center">
			<button id="findBtn" type="button"
				class="btn btn-outline-success btn-lg mr-5">네이버 웹툰</button>
			<button type="button" class="btn btn-outline-secondary btn-lg">추가
				예정..</button>
		</div>
	</div>
	<div class="container">
		<h2 class="text-center">원하는 태그를 선택해주세요!</h2>
        <p class="text-center">중복선택이 가능합니다!(너무 많이 선택하면 검색이 안 될 수 있어요..)</p>
		<form id="submitTag" class="text-center" action="/result" method="post">
			<div class="form-check-inline">
				<label class="form-check-label" for="check1"> <input
					type="checkbox" class="form-check-input" id="check1" name="option1"
					value="1">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">학원물</button>
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label" for="check2"> <input
					type="checkbox" class="form-check-input" id="check2" name="option2"
					value="2">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">액션물</button>
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label" for="check2"> <input
					type="checkbox" class="form-check-input" id="check3" name="option3"
					value="3">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">일상</button>
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label" for="check2"> <input
					type="checkbox" class="form-check-input" id="check4" name="option4"
					value="4">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">느와르</button>
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label" for="check2"> <input
					type="checkbox" class="form-check-input" id="check5" name="option5"
					value="5">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">먼치킨</button>
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label" for="check2"> <input
					type="checkbox" class="form-check-input" id="check6" name="option6"
					value="6">
					<button id="schools" name="" type="button"
						class="btn btn-outline-success btn-lg mr-5">무협</button>
				</label>
			</div>
			<br>
			
			<div class="text-center mt-5">
				<button id="submitBtn" type="button" class="btn btn-primary">검색하기!!</button>
			</div>
		</form>
	</div>
</body>
</html>