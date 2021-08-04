<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>포트톨리오</title>
<!-- Custom fonts for this template -->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css2">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<script src="/resources/vendor/jquery/jquery.min.js"></script>

<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->

<script src="/resources/css/animate.css"></script>

</head>

<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand">프리미엄독서실</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">홈</a></li>
                        <li class="nav-item"><a class="nav-link" href="/customLogin">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="/user/userReg">회원등록</a></li>
                        
                          <li class="nav-item"><a class="nav-link" href="/board/list">게시판</a></li>
                        <li class="nav-item"><a class="nav-link" href="/qna">질문&답변</a></li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">정보</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/info/path">오시는 길</a></li>
                                <li><a class="dropdown-item" href="/info/seat">좌석 배치도</a></li>
                            </ul>
                        </li>
                        
                        <div class="productbar">
                        	<ul>
                        		<li><a class="dropdown-item" href="/product/all">전체 목록</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="/product/month">이용권</a></li>
                                <li><a class="dropdown-item" href="/product/desk">책상</a></li>
                                <li><a class="dropdown-item" href="/product/chair">의자</a></li>
                        		 	</ul>
                        		 </li>
                        	</ul>
                        </div>
                        
                        
<!--                         <li class="nav-item dropdown"> -->
<!--                             <a class="nav-link dropdown-toggle" id="navbarDropdown" href="product/all" role="button" data-bs-toggle="dropdown" aria-expanded="false">구매</a> -->
<!--                             <ul class="dropdown-menu" aria-labelledby="navbarDropdown"> -->
<!--                                 <li><a class="dropdown-item" href="/product/all">전체 목록</a></li> -->
<!--                                 <li><hr class="dropdown-divider" /></li> -->
<!--                                 <li><a class="dropdown-item" href="/product/month">이용권</a></li> -->
<!--                                 <li><a class="dropdown-item" href="/product/desk">책상</a></li> -->
<!--                                 <li><a class="dropdown-item" href="/product/chair">의자</a></li> -->
<!--                             </ul> -->
<!--                         </li> -->
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>


				<!-- Begin Page Content -->
