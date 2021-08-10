<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<!-- 타이틀 -->
    <title>Camping Community</title>

    <!-- 폰트링크-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Otomanopee+One&display=swap" rel="stylesheet">   <!-- 폰트링크추가 -->

    <!-- css링크변경 -->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">

  <!-- 게시판css -->
    <link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
     /* 게시판스타일추가 */
.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 40px;
}
 /* 홈페이지 타이틀폰트 css */
#title{
        font-family: "Sofia", sans-serif;
    }
</style>
  

</head>

<body id="page-top">

    <!-- 전체페이지 -->
    <div id="wrapper">

       <!--사이드바 -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

           <!-- 사이드바 로고 -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                   
                </div>
                <div class="sidebar-brand-text mx-3">Menu</div>
            </a>

        <!-- 메뉴 나누기 -->
            <hr class="sidebar-divider my-0">

             <!-- 홈-->
            <li class="nav-item">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-campground"></i>
                    <span>Home</span></a>
            </li>

           <!-- 페이지나누기 -->
            <hr class="sidebar-divider">

         
               <!-- 메뉴-자유게시판 -->
               <li class="nav-item active">
                <a class="nav-link" href="tables.html">
                    <i class="far fa-file-alt"></i> 
                    <span>자유게시판</span></a>
            </li>
              <!-- 드롭다운 메뉴 추가-->
              <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="far fa-file-alt"></i>
                    <span>캠핑정보</span>      <!-- 메뉴제목 변경 -->
                </a>
                  <!-- 캠핑정보 안 메뉴 -->
                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="q_a.html">Q&A</a>     <!-- 링크,제목변경 -->
                        <a class="collapse-item" href="tip.html">캠핑 꿀TIP</a>    <!-- 링크,제목변경 -->
                    </div>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="location.html">
                    <i class="fas fa-search-location"></i><!-- 아이콘 변경 -->
                    <span>캠핑장 검색</span></a>  <!-- 메뉴제목 변경 -->
            </li>



            <!-- 페이지 나누기 -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- 사이드바메뉴 줄이기버튼 -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
 
        </ul>
        <!-- 마지막 사이드바 -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- 탑 타이틀  -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                   

               <!-- 타이틀 -->
               <div class="logo mx-auto d-block"  style="width: 100%;">
                <a href="index.html">
                    <h1 id="title" style="text-align:center; color: rgb(102, 83, 38); font-family: 'Otomanopee One', sans-serif; " alt="logotitle" ><i class="fas fa-mountain"></i>&nbsp;C&nbsp;A&nbspM&nbspP&nbspI&nbspN&nbspG</h1>
                          
                       </a>
                    </div>
            <!-- 회원정보 -->
            <ul class= "navbar-nav ml-auto">                       
             
               <!--클래스  -->
               <div class="topbar-divider d-none d-sm-block"></div>   
                  <!-- 회원정보 -->
             <li class="nav-item dropdown no-arrow">
                    
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                        <img class="img-profile rounded-circle"
                            src="img/undraw_profile.svg">
                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                        aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="login.htm">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            login 
                        </a>
                      
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </div>
                </li>

            </ul>

                </nav>
                 <!-- 탑바 마지막 -->

                <!-- 게시판페이지 전체사이즈  -->
                <div class="container-fluid">

                   

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">>게시글 상세페이지</h6>
                        
                        </div>
                     
						<!-- 게시판바디 -->
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table- striped table-bordered table table-hover" id="Table" width="100%" cellspacing="0" border="1" style="table-layout: fixed">
                                   
                                 
                                    <div id="container" align="center">
                                        <div class="box-header">
                                            <h3 class="box-title">상세보기</h3>
                                        </div>
                                
                                        <div class="col-md-12">
                                            <div class="col-md-2 box-body"></div>
                                            <div class="col-md-8 box-body">
                                                <div class="form-group">
                                                    <label>작성자</label> <input type="text" name="w_id"
                                                        class="form-control" readonly="readonly" value='<c:out value="${pageInfo.w_id}"/>'/>
                                                </div>
                                                
                                                <div class="form-group">
														<label>글번호</label> <input type="text" name="f_seq"
															class="form-control" readonly="readonly"
															value='<c:out value="${pageInfo.f_seq}"/>' />
													</div>
													
                                                <div class="form-group">
                                                    <label>제목</label> <input type="text" name="title"
                                                        class="form-control" 
                                                        readonly="readonly" value='<c:out value="${pageInfo.title}"/>'/>
                                                </div>
                                
                                                <div class="form-group">
                                                    <label>내용</label>
                                                    <textarea name="content" rows="5" readonly="readonly"
                                                        class="form-control"><c:out value="${pageInfo.content}"/></textarea>
                                                </div>
                                                
                                                    <div class="form-group">
                                                        <label>첨부파일</label> <label class="form-control"><a
                                                            href="#"></a></label>
                                                    </div>
                                               
                                            </div>
                                            <div class="col-md-2 box-body"></div>
                                        </div>
                                        <div class="box-footer">
											<c:if test="${member.id == pageInfo.w_id }">
												<input class="btn btn-warning" id="modify_btn" type="button" value="수정">
												<input class="btn btn-danger" id="delete_btn" type="button" value="삭제">
											</c:if>
											    
                                            	<input class="btn btn-primary" id="list_btn" type="button" value="목록">
                                        </div>
                                    </div>
                      
                                
                                
                            
                            </div>
                        </div>
                    </div>

                </div>
                 <!-- 전체페이지 마지막 -->

            </div>
             <!-- 메인컨텐츠 끝  -->

      <!-- 마지막부분  -->
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
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- 회원정보 토글안에있는 로그아웃 모달-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <!-- <h5 class="modal-title" id="exampleModalLabel"></h5>삭제 -->
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                
                <div class="modal-body">로그아웃 하시겠습니까?.</div><!-- 내용변경 -->
                <div class="modal-footer">
                    <!-- <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>삭제 -->
                    <a class="btn btn-primary" href="login.html">로그아웃</a><!-- 내용변경 -->
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
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/demo/datatables-demo.js"></script>
    
									<form id="infoForm" action="/board/modify" method="get">
										<input type="hidden" id="f_seq" name="f_seq" value='<c:out value="${pageInfo.f_seq}"/>'>
										<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
										<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
										<input type="hidden" name="type" value="${cri.type }">
										<input type="hidden" name="keyword" value="${cri.keyword }">
									</form>
<script>
	let form = $("#infoForm");
	
	// 목록 버튼
	$("#list_btn").on("click", function(e){
		form.find("#f_seq").remove();
		form.attr("action", "/board/tables");
		form.submit();
	});
	
	//수정 버튼
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/updateboard");
		form.submit();
	});
	
	//삭제 버튼
	$("#delete_btn").on("click", function(e){
		form.attr("action", "/board/deleteboard");
		form.attr("method", "post")
		form.submit();
	});	
	
</script>
</body>

</html>