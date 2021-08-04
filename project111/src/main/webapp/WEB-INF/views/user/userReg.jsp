<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>

	<form method="POST">
	
		<!-- 아이디 -->
		<div class="form-group">
			<label for="user_id">아이디</label>
				<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID">
			<div class="check_font" id="id_check"></div>
		</div>
		
		<!-- 비밀번호 -->
		<div class="form-group">
			<label for="user_pw">비밀번호</label>
				<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="PASSWORD">
			<div class="check_font" id="pw_check"></div>
		</div>
		
		<!-- 비밀번호 확인 -->
		<div class="form-group">
			<label for="user_pw2">비밀번호 확인</label>
				<input type="password" class="form-control" id="user_pw2" name="user_pw2" placeholder="PASSWORD">
			<div class="check_font" id="pw2_check"></div>
		</div>
		
		<!-- 이름 -->
		<div class="form-group">
			<label for="user_name">이름</label>
				<input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름">
			<div class="check_font" id="name_check"></div>
		</div>
		
		<!-- 생년월일 -->
		<div class="form-group required">
			<label for="user_birth">생년월일</label>
				<input type="text" class="form-control" id="user_birth" name="user_birth" placeholder="BIRTH">
			<div class="check_font" id="birth_check"></div>
		</div>
		
		<!-- 본인확인 이메일 -->
		<div class="form-group">
			<label for="user_email">이메일</label>
				<input type="text" class="form-control" id="user_email" name="user_email" placeholder="EMAIL">
<!-- 					<button type="button" class="btn btn-outline-danger btn-sm px-3" onclick="config"> -->
<!-- 						<i class="fa fa-envelope"></i>&nbsp;인증 -->
<!-- 					</button>&nbsp; -->
<!-- 					<button type="button" class="btn btn-outline-info btn-sm px-3"> -->
<!-- 						<i class="fa fa-envelope"></i>&nbsp;확인 -->
<!-- 					</button>&nbsp; -->
			<div class="check_font" id="email_check"></div>
		</div>
		
		<!-- 전화번호 -->
		<div class="form-group">
			<label for="user_phone">전화번호(번호만입력하세요)</label>
				<input type="text" class="form-control" id="user_phone" name="user_phone" placeholder="PHONE">
			<div class="check_font" id="phone_check"></div>
		</div>
		
		
		<a href="/" class="btn-member">회원등록</a>
		<a href="/user/userReg" class="btn-membercancle">취소</a>
<!-- 		<button type="submit" class="btn btn-member">회원등록</button> -->
<!-- 		<button type="submit" class="btn btn-cancle">취소</button> -->
<!-- 		<div class="reg_button"> -->
<%-- 			<a class="btn btn-danger px-3" href="${pageContext.request.contextPath }"> --%>
<!-- 				<i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기 -->
<!-- 			</a>&emsp;&emsp; -->
<!-- 		</div> -->
</form>
		
<script>
	function() {
		form.user_id.value = form.user_id.value.trim();
		if (form.user_id.value.length == 0) {
			alert('아이디를 입력하세요');
			formuser_id.focus();
			return false;
		}
		
		form.user_pw.value = form.user_pw.value.trim();
		if (form.user_pw.value.length == 0) {
			alert('비밀번호를 입력하세요');
			formuser_pw.focus();
			return false;
		}
		
		form.user_pw2.value = form.user_pw2.value.trim();
		if (form.user_pw2.value.length == 0) {
			alert('비밀번호 확인을 입력하세요');
			formuser_pw2.focus();
			return false;
		}
		
		if (form.user_pw.value != form.user_pw2.value) {
			alert('비밀번호가 일치하지 않습니다.');
			formuser_pw2.focus();
			return false;
		}
		
		form.user_name.value = form.user_name.value.trim();
		if (form.user_name.value.length == 0) {
			alert('이름을 입력하세요');
			formuser_name.focus();
			return false;
		}
		
		form.user_birth.value = form.user_birth.value.trim();
		if (form.user_birth.value.length == 0) {
			alert('생년월일을 입력하세요');
			formuser_birth.focus();
			return false;
		}
		
		form.user_email.value = form.user_email.value.trim();
		if (form.user_email.value.length == 0) {
			alert('이메일를 입력하세요');
			formuser_email.focus();
			return false;
		}
	}
</script>





<%@ include file="../includes/footer.jsp"%>