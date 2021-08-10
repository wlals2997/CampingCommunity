<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Camping Community</title>

<!-- Custom fonts for this template-->
<link
	href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
 <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <!-- css변경 -->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style>
.login_warn{
	margin: 15px;
	text-align: center;
	color: red;
}
</style>
</head>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인</h1>
									</div>

									<form id="login_form" method="post">
										<div class="form-group">
											<input type="id" class="form-control form-control-user"
												name="id" aria-describedby="emailHelp"
												placeholder="아이디를 입력하세요">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												name="pw" placeholder="비밀번호를 입력하세요">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">로그인 저장</label>
					
											</div>
											<c:if test="${result == 0}">
												<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
											</c:if>
										</div>
										<input type="button" class="login_button" value="로그인">
										<hr>

									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="#">비밀번호 찾기</a>
									</div>
									<div class="text-center">
										<a class="small" href="signup">회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
	<script>
		$(".login_button").addClass("btn btn-primary btn-user btn-block")
		// 로그인 버튼 클릭 메서드
		$(".login_button").click(function() {
			//alert("loginButton Click")

			//로그인 메서드 서버 요청
			$("#login_form").attr("action", "/user/loginCheck");
			$("#login_form").submit();
		});
	</script>

</body>

</html>