<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Home Page</title>
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
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div
							class="panel panel-primary text-center no-boder bg-color-green">
							<div class="panel-body">
								<i class="fa fa-bar-chart-o fa-5x"></i>
								<h3>8,457</h3>
							</div>
							<div class="panel-footer back-footer-green">Daily Visits</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div
							class="panel panel-primary text-center no-boder bg-color-blue">
							<div class="panel-body">
								<i class="fa fa-shopping-cart fa-5x"></i>
								<h3>52,160</h3>
							</div>
							<div class="panel-footer back-footer-blue">Sales</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder bg-color-red">
							<div class="panel-body">
								<i class="fa fa fa-comments fa-5x"></i>
								<h3>15,823</h3>
							</div>
							<div class="panel-footer back-footer-red">Comments</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div
							class="panel panel-primary text-center no-boder bg-color-brown">
							<div class="panel-body">
								<i class="fa fa-users fa-5x"></i>
								<h3>36,752</h3>
							</div>
							<div class="panel-footer back-footer-brown">No. of Visits</div>
						</div>
					</div>
				</div>


				<div class="row">


					<div class="col-md-9 col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">Bar Chart Example</div>
							<div class="panel-body">
								<div id="morris-bar-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">Donut Chart Example</div>
							<div class="panel-body">
								<div id="morris-donut-chart"></div>
							</div>
						</div>
					</div>

				</div>
				<!-- /. ROW  -->

				<div class="row">
					
					<div class="col-md-9 col-sm-12 col-xs-12">

						<div class="panel panel-primary">
							<div class="panel-heading">Responsive Table Example</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>S No.</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>User Name</th>
												<th>Email ID.</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>John</td>
												<td>Doe</td>
												<td>John15482</td>
												<td>name@site.com</td>
											</tr>
											<tr>
												<td>2</td>
												<td>Kimsila</td>
												<td>Marriye</td>
												<td>Kim1425</td>
												<td>name@site.com</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Rossye</td>
												<td>Nermal</td>
												<td>Rossy1245</td>
												<td>name@site.com</td>
											</tr>
											<tr>
												<td>4</td>
												<td>Richard</td>
												<td>Orieal</td>
												<td>Rich5685</td>
												<td>name@site.com</td>
											</tr>
											<tr>
												<td>5</td>
												<td>Jacob</td>
												<td>Hielsar</td>
												<td>Jac4587</td>
												<td>name@site.com</td>
											</tr>
											<tr>
												<td>6</td>
												<td>Wrapel</td>
												<td>Dere</td>
												<td>Wrap4585</td>
												<td>name@site.com</td>
											</tr>

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