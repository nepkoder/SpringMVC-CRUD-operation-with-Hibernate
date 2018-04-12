<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="headtag.jsp"></jsp:include>

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

						<div class="panel panel-primary">
							<div class="panel-heading">List of Teachers</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Address</th>
												<th>Email ID</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="tec" items="${teachersData}">
												<tr>
													<td>${tec.id }</td>
													<td>${tec.firstName}</td>
													<td>${tec.lastName }</td>
													<td>${tec.address }</td>
													<td>${tec.email }</td>
													<td>
														<a
															href="${pageContext.request.contextPath}/teacher/update/${tec.id}"
															class="btn btn-primary">Edit</a>
														<a
															href="${pageContext.request.contextPath}/teacher/delete/${tec.id}"
															class="btn btn-primary">Delete</a>
													</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>

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