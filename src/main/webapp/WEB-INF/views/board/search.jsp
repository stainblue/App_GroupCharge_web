<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품명으로 정보 검색하기</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
					
						<form:form modelAttribute='SearchBean'>
							<p>
								<form:label path="userId">회원 ID 혹은 회원 닉네임으로 검색:
								    <form:input path="userId" class='form-control' />
								</form:label>
								<form:errors path="userId" style='color:red' />
								<input type="submit" value="검색">
							</p>
						</form:form>

						<c:if test="${! empty researchBean}">
							<table border="1" bordercolor = "black">
								<tr>
									<th>IDX</th>
									<th>ID</th>
									<th>PW</th>
									<th>Nick Name</th>
								</tr>
								<c:forEach var="researchBean" items="${researchBean}">
									<tr>
										<td>${researchBean.userIdx}</td>
										<td>${researchBean.userId}</td>
										<td>${researchBean.userPw}</td>
										<td>${researchBean.userNickName}</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
						<a class="btn btn-lg btn-dark" href="${root }board/main?board_info_idx=1"/>회원목록</a>
						
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>