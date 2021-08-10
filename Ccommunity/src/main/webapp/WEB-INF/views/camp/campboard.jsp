<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
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
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Otomanopee+One&display=swap"
	rel="stylesheet">
<!-- 폰트링크추가 -->

<!-- css-->
<!-- css링크변경 -->
<link href="../resources/css/sb-admin-2.css" rel="stylesheet">
<!-- 게시판css -->
<link
	href="../resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<style>
/* 게시판스타일추가 */
.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 40px;
}
/* 홈페이지 타이틀폰트 css */
#title {
	font-family: "Sofia", sans-serif;
}

/* 검색창 관련 스타일 */
.search_area {
	display: inline-block;
	margin-top: 30px;
	margin-left: 340px;
	margin-bottom: 15px;
}

.search_area input {
	height: 33px;
	width: 250px;
}

.search_area button {
	width: 100px;
	height: 33px;
}

.search_area select {
	height: 33px;
}
</style>

</head>

<body id="page-top">

	<!-- 전체페이지 -->
	<div id="wrapper">

		<!--사이드바 -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- 사이드바 로고 -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../../">
				<div class="sidebar-brand-icon rotate-n-15"></div>
				<div class="sidebar-brand-text mx-3">Menu</div>
			</a>

			<!-- 메뉴 나누기 -->
			<hr class="sidebar-divider my-0">

			<!-- 홈-->
			<li class="nav-item"><a class="nav-link" href="../../"> <i
					class="fas fa-campground"></i> <!-- 아이콘변경 --> <span>Home</span></a></li>

			<!-- 페이지나누기 -->
			<hr class="sidebar-divider">



			<!-- 메뉴-자유게시판    -->
			<li class="nav-item active"><a class="nav-link"
				href="../board/tables"> <!-- 아이콘 --> <i class="far fa-file-alt"></i>
					<!-- 아이콘 변경 --> <!--제목변경  --> <span>자유게시판</span></a></li>
			<!-- 드롭다운 메뉴 추가-->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="far fa-file-alt"></i> <span>캠핑정보</span> <!-- 메뉴제목 변경 -->
			</a> <!-- 캠핑정보 안 메뉴 -->
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="q_a.html">Q&A</a>
						<!-- 링크,제목변경 -->
						<a class="collapse-item" href="tip.html">캠핑 꿀TIP</a>
						<!-- 링크,제목변경 -->
					</div>
				</div></li>
			<!-- Nav Item - Tables
            <li class="nav-item active">
                <a class="nav-link" href="q_a.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Q&A</span></a>
            </li>
            <!-- Nav Item - Tables -->
			<!-- <li class="nav-item active">
                <a class="nav-link" href="tip.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>캠핑노하우</span></a>
            </li> -->
			<!-- Nav Item - Tables -->
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
		<!--마지막 사이드바 -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!--  탑 타이틀 -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">


					<!-- 타이틀 클래스변경 -->
					<div class="logo mx-auto d-block" style="width: 100%;">
						<!-- <div class="container-sm" > 삭제 -->
						<!-- 타이틀이미지에 링크걸기 추가 ,폰트,폰트사이즈,패딩 변경- 이미지삭제-->
						<a href="../../">
							<h1 id="title"
								style="text-align: center; color: rgb(102, 83, 38); font-family: 'Otomanopee One', sans-serif;"
								alt="logotitle">
								<i class="fas fa-mountain"></i>&nbsp;C&nbsp;A&nbspM&nbspP&nbspI&nbspN&nbspG
							</h1> <!-- <img class= "mx-auto d-block" style="padding-left: 400px;" src="img/logo_title.jpg"   alt="logotitle"> -->
						</a>
						<!-- <a class="navbar-brand" href="index.html">     <!-- 삭제 -->
						<!-- </a> -->
					</div>
					<!-- 회원정보 -->
					<ul class="navbar-nav ml-auto">
						<!-- 클래스 추가 -->
						<div class="topbar-divider d-none d-sm-block"></div>
						<c:if test="${member == null }">
							<div class="login_button">
								<a href="../user/login">로그인</a>
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
									src="../resources/img/undraw_profile.svg">
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

				<!-- 게시판페이지 전체사이즈 -->
				<div class="container-fluid">

					<!-- 페이지제목 -->
					<h1 class="h3 mb-2 text-gray-800">캠핑장</h1>
					<p class="mb-4"></p>

					<!-- 게시판테이블 제목 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">자유게시판</h6>

						</div>

						<!-- 게시판바디 -->
						<div class="card-body">
							<div class="table-responsive">
								<!-- table- striped , table table-hover , border, style추가 -->
								<table
									class="table table- striped table-bordered table table-hover"
									id="Table" width="100%" cellspacing="0" border="1"
									style="table-layout: fixed">

									<!-- 테이블 각 이름 -->
									<!-- 테이블크기 설정추가 -->
									<thead>
										<tr>
											<th width="60px;">NO</th>
											<th width="100px;">이름</th>
											<th style="text-align: center;" width="70%">주소</th>

										</tr>
									</thead>

									<c:forEach items="${camp_list}" var="list">
										<tr>
											<td><c:out value="${list.c_code}" /></td>
											<td><c:out value="${list.c_name}" /></td>
											<td><c:out value="${list.c_addr}" /></td>
										</tr>
									</c:forEach>
								</table>
								
								

							</div>
						</div>
					</div>

				</div>


			</div>
			<!-- 메인컨텐츠 끝 -->

			<!-- 마지막부분 -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- 켄텐츠 마지막 -->

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
					<a class="btn btn-primary" href="../../user/logout.do">로그아웃</a>
					<!-- 내용변경 -->
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="../resources/js/demo/datatables-demo.js"></script>
	<script>
		$(".write_button").addClass("btn btn-primary fa-pull-right")

		// 로그인 버튼 클릭 메서드
		$(".write_button").click(function() {
			//alert("loginButton Click")
			if ("${member.name}" != "") {
				location.href = "write"
			} else {
				location.href = "../user/login"
			}
		});
		
		//<a>태그 즉, title을 눌렀을때 해당 게시물 상세 페이지로 이동하도록 하는 동작 코드
		let moveForm = $("#moveForm");
 
    	$(".move").on("click", function(e){
        	e.preventDefault();
        
        	moveForm.append("<input type='hidden' name='f_seq' value='"+ $(this).attr("href")+ "'>");
       		moveForm.attr("action", "/board/boardcontent");
        	moveForm.submit();
    	});
    	
    	//페이징 적용 (이전, 각 번호, 다음 페이지 눌렀을때 액션)
    	$(".pageInfo a").on("click", function(e){
    		 
    		e.preventDefault();
            moveForm.find("input[name='pageNum']").val($(this).attr("href"));
            moveForm.attr("action", "/board/tables");
            moveForm.submit();
    		
        });
    	
    	//검색
    	$(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
    	
	</script>

</body>

</html>