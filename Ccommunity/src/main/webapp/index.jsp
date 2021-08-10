	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- 타이틀 -->
<title>Camping Community</title>

<!-- 폰트링크-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Otomanopee+One&display=swap"
	rel="stylesheet">

<!-- css-->
<link href="resources/css/sb-admin-2.css" rel="stylesheet">
<!-- css변경 -->
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />
<link href="resources/css/main2.css" rel="stylesheet" />


<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="resources/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<!--  <script src="resources/vendor/chart.resource/js/Chart.min.js"></script> -->

<!-- Page level custom scripts -->
<!--  <script src="resources/js/demo/chart-area-demo.js"></script> 
<script src="resources/js/demo/chart-pie-demo.js"></script>-->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
/* 메인 사진스타일  css 추가 */
.carousel-item img {
	width: 100%;
	height: 850px;
}
/* 메인검색창 css추가 */
fieldset {
	position: relative;
	display: inline-block;
	padding: 0 0 0 40px;
	background: #fff;
	border: none;
	border-radius: 5px;
}
/* 메인검색창 검색버튼 css */
input, button {
	position: relative;
	width: 500px;
	height: 50px;
	padding: 0;
	display: inline-block;
	float: left;
}

input {
	color: #666;
	z-index: 2;
	border: 0 none;
}

input:focus {
	outline: 0 none;
}

input:focus+button {
	-webkit-transform: translate(0, 0);
	-ms-transform: translate(0, 0);
	transform: translate(0, 0);
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
}

input:focus+button .fa {
	-webkit-transform: translate(0px, 0);
	-ms-transform: translate(0px, 0);
	transform: translate(0px, 0);
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
	color: #fff;
}

button {
	z-index: 1;
	width: 50px;
	border: 0 none;
	background: #ceb980;
	cursor: pointer;
	border-radius: 0 5px 5px 0;
	-webkit-transform: translate(-50px, 0);
	-ms-transform: translate(-50px, 0);
	transform: translate(-50px, 0);
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
}

.fa-search {
	font-size: 1.4rem;
	color: #29abe2;
	z-index: 3;
	top: 25%;
	-webkit-transform: translate(-190px, 0);
	-ms-transform: translate(-190px, 0);
	transform: translate(-190px, 0);
	-webkit-transition-duration: 0.3s;
	transition-duration: 0.3s;
	-webkit-transition: all 0.1s ease-in-out;
	transition: all 0.1s ease-in-out;
}
/* 검색 select박스(카테고리검색) css추가 */
select {
	width: 200px; /* 원하는 너비설정 */
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%; /* 네이티브 화살표 대체 */
	border: 1px solid rgb(255, 255, 255);
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

.searchbox {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: center;
	justify-content: center;
}

.search.container-sm-12 {
	background: url("img/pexels-cliford-mervil-2398220.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: 100%;
	padding: 100px;
	width: 800px;
	min-width: 800px;
}
/* 버튼 css */
#sendContact.btn.btn-success {
	float: right;
	background-color: rgb(177, 224, 68);
	border: none;
	width: 80px;
}
/* 홈페이지 타이틀폰트 css */
#title {
	font-family: "Sofia", sans-serif;
}
</style>
<script>
// sido 비어있으면 sigungu 체크 불가능
$(function(){
	// id가 sido인 셀렉트 박스 값이 바뀌면 코드가 실행.
	$("#sido").on("change", function(){
		sido = $(this).val();
		
		$("#sigungu").children('option:not(:first)').remove();
		
		if(sido != ""){
			jQuery.ajax({
				type:"GET",
				url:"/getSigungu.do",
				cache:false,
				data:{
					sido:sido
				},
				datatype:"json",
				success:function(data){
					var obj = data;
					console.log(obj.sigungu);
					
					$.each(obj, function(k,v){
						//console.log(k);
						console.log("v 값 : " + v);
						$("#sigungu").append('<option value="'+k+'">'+v+'</option>');	
					});
					},
				error:function(xhr, status, error){
					console.log("ERROR");
				}
			});
		} else{
			$("select[name=sigungu]").attr("disabled",true);
		}
	});

	
	$("#campsearch").click(function(){
		//alert("1");
		sido = $("#sido").val();
		sigungu = $("#sigungu").val();
		if(sido != ""){
			if(sigungu != ""){
				$("#searchform").attr("action", "/camp/search").submit();
			} else{
				alert("'시/군/구'를 입력해주세요");
			}
		}else{
			alert("'시/도'를 입력해주세요");
		}
	});
	
	
	$.ajax({
		type: "GET",
		url: "/listRank.do",
		success: function(data) {
			var getBoardListRank = data;
			var tags = [];
			console.log(getBoardListRank);
			$.each(getBoardListRank, function(i, rank){
				var no = Number(i) + 1;
				tags.push("<tr>");
				tags.push("<td>"+ no + "</td>");
				tags.push("<td>"+ rank.f_title + "</td>");
				tags.push("<td>"+ rank.f_cnt + "</td>");
				tags.push("</tr>");
			});
			$("#ListRank").append(tags);
		}
	});
});

</script>
</head>
</head>
<body id="page-top">

	<!-- 전체페이지 -->
	<div id="wrapper">

		<!-- 사이드바 -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- 사이드바 로고 -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/">
				<div class="sidebar-brand-icon rotate-n-15"></div>
				<div class="sidebar-brand-text mx-3">Menu</div>
			</a>

			<!-- 메뉴 나누기-->
			<hr class="sidebar-divider my-0">

			<!-- 홈 -->
			<li class="nav-item active"><a class="nav-link" href="/"> <i
					class="fas fa-campground"></i> <!-- 아이콘변경 --> <span>Home</span></a></li>
			<!-- 페이지나누기 -->
			<hr class="sidebar-divider">

			<!-- 메뉴-자유게시판    -->
			<li class="nav-item active"><a class="nav-link"
				href="board/tables"> <!-- 아이콘 --> <i class="far fa-file-alt"></i>
					<!-- 아이콘 변경 --> <span>자유게시판</span></a></li>
			<!-- 드롭다운 메뉴-->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="far fa-file-alt"></i> <span>캠핑정보</span> <!-- 메뉴제목 변경 -->
			</a> <!-- 캠핑정보 안 메뉴 -->
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<!-- <h6 class="collapse-header">Custom Components:</h6> 삭제-->
						<a class="collapse-item" href="/">Q&A</a>
						<!-- 링크,제목변경 -->
						<a class="collapse-item" href="/">캠핑 꿀TIP</a>
						<!-- 링크,제목변경 -->
					</div>
				</div></li>

			<!-- 캠핑장메뉴 -->
			<li class="nav-item active"><a class="nav-link"
				href="/"> <i class="fas fa-search-location"></i> <!-- 아이콘 변경 -->
					<span>캠핑장 검색</span></a> <!-- 메뉴제목 변경 --></li>

			<!-- 페이지 나누기 -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- 사이드바메뉴 줄이기버튼 -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- 마지막 사이드바-->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- 탑 타이틀 -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

				</form>
				<!-- 타이틀 클래스변경 -->
				<div class="logo mx-auto d-block" style="width: 100%;">

					<!-- 타이틀이미지에 링크걸기 추가 ,폰트,폰트사이즈,패딩 변경- 이미지삭제, -->
					<a href="/">
						<h1 id="title"
							style="text-align: center; color: rgb(102, 83, 38); font-family: 'Otomanopee One', sans-serif;"
							alt="logotitle">
							<i class="fas fa-mountain"></i>&nbsp;C&nbsp;A&nbspM&nbspP&nbspI&nbspN&nbspG
						</h1>

					</a>

				</div>
				<!-- 회원정보 -->
				<div>
					<ul class="navbar-nav ml-auto">
						<!-- 클래스 추가 -->
						<div class="topbar-divider d-none d-sm-block"></div>
						<c:if test="${member == null }">
							<div class="login_button">
								<a href="user/login"><i class="fas fa-user fa-lg"
									style="color: brown">login</i></a>
								<!-- 아이콘 클레스 추가, 스타일추가 -->


							</div>
						</c:if>
						<c:if test="${member != null}">
							<!-- 회원정보 -->
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" id="userDropdown" role="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span
									class="mr-2 d-none d-lg-inline text-gray-600 small">${member.name}님
										환영합니다</span> <!-- 이미지소스 --> <img class="img-profile rounded-circle"
									src="resources/img/undraw_profile.svg">
							</a> <span class="mr-2 d-none d-lg-inline text-gray-600 small"></span>
								<!-- 회원정보 드롭다운 -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">

									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#" data-toggle="modal"
										data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
									</a>
								</div></li>
						</c:if>

					</ul>
				</nav>
				<!-- 탑바 마지막 -->


				<!-- Page Heading -->

				<div class="d-sm-flex align-items-center "></div>

				<div id="demo" class="carousel slide " data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>

					<!-- 슬라이드 클래스 -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<!-- 사진링크,제목,내용변경 -->
							<img class="mx-auto d-block"
								src="https://cdn.pixabay.com/photo/2020/02/02/03/39/jeju-island-4811936_960_720.jpg"
								alt="제주도 성산일출봉" style="">
							<div class="carousel-caption">
								<h3>
									"일출의 정석" 제주도 <b> 성산일출봉</b>
								</h3>
								<p>유네스코 세계자연유산에 등재된 성산일출봉은 대한민국에서 가장 아름다운 해돋이로 꼽힌다.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="mx-auto d-block"
								src="https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130_960_720.jpg"
								alt="부산 광안대교">
							<!-- 클레스추가 -->
							<div class="carousel-caption">
								<h3>
									부산을 "상징"하는 <b>광안리</b>
								</h3>
								<p>
									<b>부산 최고의 해수욕장인 광안리는 <br>매년 불꽃축제가 열리며 밤이 되면 최첨단 조명 장치가
										갖춰진 광안대교가 <br>밤바다 위에 멋진 그림을 그려내어 탁월한 해상경관을 연출한다.
									</b>
								</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="mx-auto d-block"
								src="https://cdn.pixabay.com/photo/2015/01/08/14/11/night-view-593026_960_720.jpg"
								alt="경주 안압지">
							<div class="carousel-caption">
								<!-- 클레스추가 -->
								<h3>
									경주의 야경명소! <b>안압지</b>
								</h3>
								<p>
									오랜 역사를 가지고 있는 경주 안압지는 천년의 세월을 그대로 느낄 수 있다.<br>많은 사진가들의
									대표명소이며 일출직전, 일출직후 주변의 은은한 조명으로 인해 아름다운 야경을 만들어낸다.
								</p>
							</div>
						</div>
					</div>


					<!-- 슬라이드 좌우버튼 -->
					<a class="carousel-control-prev" data-slide="prev"> <span
						class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" data-slide="next"> <span
						class="carousel-control-next-icon"></span>
					</a>

				</div>
				<!-- 지도검색창-->
				<div class="container-sm-12">
					<div class="s130">
						<div class=" container-sm-12 ">

							<form id="searchform" method="get">
								<fieldset>
									<input name="searchInput" placeholder="지역명을 입력해주세요." />
									<button type="submit">
										<i class="fa"></i>
									</button>
								</fieldset>
							
							<!-- 셀렉트박스검색창 -->
							<div class="selectbox" style="text-align: left;">
								<select name="sido" id="sido">
									<option value="">시/도</option>
									<option value="서울특별시">서울특별시</option>
									<option value="부산광역시">부산광역시</option>
									<option value="대구광역시">대구광역시</option>
									<option value="인천광역시">인천광역시</option>
									<option value="광주광역시">광주광역시</option>
									<option value="대전광역시">대전광역시</option>
									<option value="울산광역시">울산광역시</option>
									<option value="세종특별자치시">세종특별자치시</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
									<option value="충청북도">충청북도</option>
									<option value="충청남도">충청남도</option>
									<option value="전라북도">전라북도</option>
									<option value="전라남도">전라남도</option>
									<option value="경상북도">경상북도</option>
									<option value="경상남도">경상남도</option>
									<option value="제주특별자치도">제주특별자치도</option>
								</select> 
								
								<select name="sigungu" id="sigungu">
									<option value="">시/군/구</option>
								</select>

								<!-- 셀렉트박스검색버튼 -->
								<button type="submit" class="btn btn-success" id="campsearch">검색</button>
							</div>
							</form>

						</div>
					</div>

					<!-- 삭제 -->

					<!-- 중간박스 -->
					<div class="titlebar">
						<div class="layout">
							<div class="title_w  container p-3 my-3 "
								style="text-align: center;">
								<h2 class="tt01">

									<span>(소제목) </span>
								</h2>
							</div>
						</div>
					</div>
					<!-- 중간박스 -->


					<!-- Content Row -->

					<div class="row">

						<!-- 인기게시글 순위표 -->
						<!-- 인기게시글,페이스북,지도상자 전체 -->

						<div class="container">
							<!-- 클래스 변경 -->
							<div class="row">
								<div class=" col-md-4">
									<!-- 클래스 변경 -->

									<div class="card shadow mb-4">
										<!-- Card Header - Dropdown -->
										<div
											class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
											<h6 class="m-0 font-weight-bold text-primary">
												<i class="fas fa-trophy"></i>인기게시글 순위
											</h6>

										</div>

										<!-- 인기게시글 순위 표 클레스 -->
										<table class="table table-bordered">

											<thead>
												<tr>
													<th>순위</th>
													<th>제목</th>
													<th>조회수</th>
												</tr>
											</thead>
											<tbody id="ListRank">
												<!-- 인기게시글 순위 예시 -->
                                                
											</tbody>

										</table>
									</div>
								</div>
								<div class=" col-md-4">
									<!-- 클레스변경 -->

									<div class="card shadow mb-4">
										<!-- Card Header - Dropdown -->
										<div
											class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
											<h6 class="m-0 font-weight-bold text-primary">
												<i class="fab fa-facebook"></i>FaceBook
											</h6>

										</div>

										<!-- 페이스북 글 예시 -->
										<div class="fb_cont">
											<ul class="fb_list">
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>
												<li class="tt"><a
													href="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fcamping.for.mania%2Fposts%2F335610271446537&show_text=true&width=500">#비빔면#캠핑요리#캠피장추천#camping#감성캠핑</a>
												</li>
												<li class="date">2021-7- 3</li>

											</ul>

										</div>
									</div>
								</div>

								<!-- 지도 -->
								<!-- 클래스 변경 -->
								<div class=" col-md-4">
									<!-- 클레스변경 -->

									<div class="card shadow mb-4">
										<!-- 지도제목 -->
										<div
											class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
											<h6 class="m-0 font-weight-bold text-primary">Maps</h6>

										</div>
										<!-- 네이버 지도-->

										<div class="card-body">
											<iframe
												src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d409554.7840029931!2d127.69725553281248!3d36.682993599999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3564f6276dc5ee5d%3A0xa1b5660762765cda!2z6re466aw7Iqk7Yak7Lqg7ZWR7J6l!5e0!3m2!1sko!2skr!4v1625537531928!5m2!1sko!2skr"
												" width="320" height="450" style="border: 0;"
												allowfullscreen="" loading="lazy"></iframe>
											<!-- width 사이즈 변경-->



										</div>
									</div>
								</div>
							</div>




						</div>
					</div>

					<!-- </div> -->

					<!-- End of Main Content -->

					<!-- 마지막부분-->
					<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2021</span>
						</div>
					</div>
					</footer>
					<!-- End of Footer -->

				</div>
				<!-- 컨텐츠 마지막-->

			</div>
			<!-- 페이지 마지막 -->

			<!-- 스크롤 위로 올리는 버튼-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- 회원정보 토글안에있는 로그아웃 모달-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<!-- <h5 class="modal-title" id="exampleModalLabel"></h5>삭제 -->
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>

						<div class="modal-body">로그아웃 하시겠습니까?.</div>
						<!-- 내용변경 -->
						<div class="modal-footer">
							<!-- <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>삭제 -->
							<a class="btn btn-primary" href="user/logout.do">로그아웃</a>
							<!-- 내용변경 -->
						</div>
					</div>
				</div>
			</div>
</body>


</html>