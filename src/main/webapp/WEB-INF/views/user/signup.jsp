<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<!-- css변경 -->
<link href="../resources/css/sb-admin-2.css" rel="stylesheet">
<style>
.duple_button {
	padding-top: 40px;
}

.f_red {
	margin: 15px;
	text-align: center;
	color: red;
}

.f_green {
	margin: 15px;
	text-align: center;
	color: green;
}
</style>
</head>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>

							<form:form role="form" commandName="registerRequest"
								action="/user/signup" method="post">
								<div class="form-group row">
									<div class="col-sm-12 mb-3 mb-sm-0">
										<label for="my_name">이름</label>
										<form:input type="text" class="form-control form-control-user"
											path="name" style="text-align: center;"
											placeholder="이름을 입력하세요" />
										<form:errors path="name"></form:errors>
									</div>

								</div>
								<div class="form-group row">
									<div class="form-id">
										<div class="col-sm-12 mb-3 mb-sm-0">
											<label for="my_id">아이디</label>
											<form:input type="text"
												class="form-control form-control-user"
												style="text-align: center;" path="id"
												placeholder="아이디를 입력하세요" />
										</div>

									</div>
									<form:errors path="id"></form:errors>
								</div>

								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<label for="my_password">비밀번호</label>
										<form:input type="password"
											class="form-control form-control-user" path="pw"
											placeholder="비밀번호를 입력하세요" />
										<form:errors path="pw"></form:errors>
									</div>
									

									<div class="col-sm-6">
										<label for="my_Reapeatpassword">비밀번호 확인</label>
										<form:input type="password"
											class="form-control form-control-user"
											id="exampleRepeatPassword" path="checkPw"
											placeholder="비밀번호 확인" />
										<form:errors path="checkPw"></form:errors>
									</div>
									
								</div>

								<div class="form-group ">
									<label for="my_Email">메일주소</label>
									<form:input type="email" class="form-control form-control-user"
										path="email" placeholder="메일주소를 입력하세요" />
									<form:errors path="email"></form:errors>
								</div>

								<div class="form-group ">
									<label for="my_number">휴대폰번호</label>
									<form:input type="tel" class="form-control form-control-user"
										path="tel" placeholder="휴대폰번호를 입력하세요" />
									<form:errors path="tel"></form:errors>
								</div>

								<button type="submit" class="btn btn-primary btn-user btn-block">가입하기</button>

								<hr>
								<a href="index.html" class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> Register with Google
								</a>
								<a href="signup.do" class="btn btn-facebook btn-user btn-block">
									<i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							</form:form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="login">Already have an account?
									Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>


	</script>

</body>

</html>