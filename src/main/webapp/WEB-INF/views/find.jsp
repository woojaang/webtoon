<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	$(function() {
		$("#findBtn").click(function() {
			location.href = "/find"
		})
		$("#findBtn").attr("name", "checked")
		$("input.form-check-input").css("display", "none");
		$(".btn-outline-success").click(function() {
			if ($(this).attr("name") == "checked") {
				$(this).attr("name", "")

			} else {
				$(this).attr("name", "checked")
			}
		})
		$("#oneSubmitBtn").click(function() {
			console.log("submit")
			$(".btn-outline-success[name=checked]").each(function() {
				$(this).prev().prop('checked', true)
				console.log($(this).prev().prop('checked'))
			})
			$(".btn-outline-success[name='']").each(function() {
				$(this).prev().prop('checked', false)
				console.log($(this).prev().prop('checked'))
			})
			$("#oneSubmitTag").submit()
		})
		
		$("#allSubmitBtn").click(function() {
			console.log("submit")
			$(".btn-outline-success[name=checked]").each(function() {
				$(this).prev().prop('checked', true)
				console.log($(this).prev().prop('checked'))
			})
			$(".btn-outline-success[name='']").each(function() {
				$(this).prev().prop('checked', false)
				console.log($(this).prev().prop('checked'))
			})
			$("#allSubmitTag").submit()
		})
	})
</script>
</head>

<body>
	<div class="jumbotron text-center mb-5 bg-white">
		<a href="/">
			<h1 id="index" class="text-lg-center">?????? ??????????</h1>
		</a>
	</div>
	<div class="container-fluid p-5 mb-5 bg-light" >
		<h2 class="text-center">????????? ???????????? ???????????????!</h2>
        <p class="text-center mb-5">?????? ????????? ???????????? ????????? ???????????????..</p>
		<div class="text-center">
			<button id="findBtn" type="button"
				class="btn btn-outline-success btn-lg mr-5">????????? ??????</button>
			<button type="button" class="btn btn-outline-secondary btn-lg">??????
				??????..</button>
		</div>
	</div>
	<div class="container-fluid">
		<h2 class="text-center mb-5">????????? ????????? ???????????? ???????????? ???????????????!</h2>
		<div class="row">
			<div class="col text-center">
				<button type="button" class="btn btn-outline-success mb-3 btn-lg" data-toggle="collapse" data-target="#oneCol">
                    	????????? ????????? ??? ???????????? ???????????? ?????? ?????? ????????????
                </button>
                <div id="oneCol" class="collapse">
                	<form id="oneSubmitTag" class="text-center" action="/resultOne" method="post">
						<c:forEach var='tag' items="${tags}" varStatus="status" end="20">
						
						
							<div class="form-check-inline pb-3">
								<label class="form-check-label" for="${status.count}"> <input
									type="checkbox" class="form-check-input" id="${status.count}" 
									name="checkedOne" value="${tag}">
									<button name="" type="button"
										class="btn btn-lg btn-outline-success mr-1 font-weight-bold" style="border-width:2px; border-radius : 25px"><c:out value="${tag}" /></button>
								</label>
							</div>
						
						</c:forEach>
						<br>
						<div class="text-center mt-5">
							<button id="oneSubmitBtn" type="button" class="btn btn-primary">?????? ????????????!!!</button>
							
						</div>
					</form>
                </div>
			</div>
			<div class="col text-center">
				<button type="button" class="btn btn-outline-success mb-3 btn-lg" data-toggle="collapse" data-target="#allCol">
                    	????????? ???????????? ????????? ???????????? ????????? ????????????
                </button>
                <div id="allCol" class="collapse">
                	<form id="allSubmitTag" class="text-center" action="/resultAll" method="post">
						<c:forEach var='tag' items="${tags}" varStatus="status" end="20">
						
						
							<div class="form-check-inline pb-3">
								<label class="form-check-label" for="${status.count}"> <input
									type="checkbox" class="form-check-input" id="${status.count}" 
									name="checkedAll" value="${tag}">
									<button name="" type="button"
										class="btn btn-lg btn-outline-success mr-1 font-weight-bold" style="border-width:2px; border-radius : 25px"><c:out value="${tag}" /></button>
								</label>
							</div>
						
						</c:forEach>
						<br>
						<div class="text-center mt-5">
							<button id="allSubmitBtn" type="button" class="btn btn-primary">?????? ????????????!!!</button>
							
						</div>
					</form>
                </div>
			</div>
		</div>
	</div>
	<br><br><br><br><br>
</body>
</html>