<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="headtag.jsp"></jsp:include>
<title>Add New Teacher Record</title>
</head>
<body>

	<div id="wrapper">

		<jsp:include page="topnav.jsp"></jsp:include>
		<!--/. NAV TOP  -->
		<jsp:include page="navside.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">

				<div class="row">

					<div class="col-md-12 col-sm-12 col-xs-12">

						<form action="${pageContext.request.contextPath}/teacher/update"
							method="POST">
							<div class="form-group">
								<input class="form-control" name="teacherID" type="text"
									value="${teacher.id}" readonly>
							</div>
							<div class="form-group">
								<input class="form-control" name="teacherFirstName" type="text"
									value="${teacher.firstName}">
							</div>

							<div class="form-group">
								<input class="form-control" name="teacherLastName" type="text"
									value="${teacher.lastName}">
							</div>
							<div class="form-group">
								<input class="form-control" name="teacherAddress" type="text"
									value="${teacher.address}">
							</div>
							<div class="form-group">
								<input class="form-control" name="teacherEmail" type="text"
									value="${teacher.email}">
							</div>

							<input class="btn btn-primary btn-block" type="submit"
								value="Update Record">
						</form>

					</div>
				</div>
				<!-- /. ROW  -->

				<jsp:include page="footer.jsp"></jsp:include>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<jsp:include page="jstag.jsp"></jsp:include>

</body>
</html>