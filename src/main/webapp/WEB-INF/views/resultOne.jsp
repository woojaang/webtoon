<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<style>
		button[name="checked"] {
		color: rgb(255, 255, 255);
		background-color: rgb(40, 167, 69);
		}
		p.star {
		display:inline;
		}
		p.artist {
		display:inline;
		}
		ul {
		display : inline;
		list-style-type: none;
		}
		div[class="thumb"] {
		position: absolute;
		}
		strong {
		display : inline;
		font-size : 20px;
		}
		dl {
		padding-left: 210px;
		}
		dt {
		display: table;
		}
		li.item {
		min-height: 180px;
	    position: relative;
	    padding: 10px 0;
		}
	</style>
	<script>
		
		$(function () {
			$("#findBtn").click(function() {
				location.href="/find"
			})
			$("#findBtn").attr("name", "checked")
			
		})
		
		$(function () {
			$("#re").click(function() {
				location.href="/find"
			})
			
		})
	</script>
</head>
<body>
	<div class="jumbotron text-center mb-5 bg-white">
		<h1 class="text-lg-center">웹툰 뭐볼까?</h1>
	</div>
	<div class="container-fluid p-5 mb-5 bg-light" >
		<h2 class="text-center">원하는 플랫폼을 선택하세요!</h2>
        <p class="text-center mb-5">추후 다양한 플랫폼을 추가할 예정입니다..</p>
		<div class="text-center">
			<button id="findBtn" type="button"
				class="btn btn-outline-success btn-lg mr-5">네이버 웹툰</button>
			<button type="button" class="btn btn-outline-secondary btn-lg">추가
				예정..</button>
		</div>
	</div>
	<div class="container">
		<div id="content">
			<div class="webtoon curation">
				<div>
					<h5>선택한 키워드를 하나 이상 포함하는 웹툰입니다!!</h5>
				</div>
				<div class="tags">
					<h3 style="display: inline">
						<c:forEach var="tag" items="${tags}">
							|${tag}|	 
						</c:forEach>
					</h3>
					<button id="re" type="button" class="btn btn-outline-dark" style="float: right">다시 검색하기</button>
				</div>
				<ul class="curation_list">
					<c:forEach var="wt" items="${wi}" begin="0" end="50" varStatus="status"> 
						<li class="item">
							<div class="thumb">
								<a href="${wt.detailUrl}">
									<img src="${wt.thumbnail}" width="188" height="152">
								</a>
							</div>
								<dl>
									<dt>
										<a href="${wt.detailUrl}" class="text-dark">
											<strong>${wt.webtoonName}</strong>
										</a>
										<p class="text-secondary artist">${wt.artist}</p>
									</dt>
									<dd>
										<div class=rating_type>
											<p class=star>평점</p>
											<strong>${wt.star}</strong>
										</div>
										<div class=:detail>
											<a href="${wt.detailUrl}" class="text-dark">
												<p>${wt.detail}</p>
											</a>
										</div>
									</dd>
								</dl>
						</li>
					</c:forEach>
				</ul>
			
			
			</div>
		
		</div>
	</div>
	
	
	

</body>
</html>