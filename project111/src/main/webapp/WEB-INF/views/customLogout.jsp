<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="includes/header.jsp"%>

<body>

<h1>로그아웃</h1>
	<form action="/customLogout" method='post'>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<button>로그아웃</button>
	</form>
</body>

	<script>
		$(".btn-success").on("click", function(e) {
			e.preventDefault();
			$("form").submit();
		});
	</script>

	<c:if test="${param.logout != null }">
		<script>
			$(document).ready(function() {
				alert("로그아웃");
			});
		</script>
	</c:if>
	<%@ include file="includes/footer.jsp"%>