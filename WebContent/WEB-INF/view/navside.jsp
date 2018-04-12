<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">

			<li><a href="${pageContext.request.contextPath}/dashboard"><i
					class="fa fa-dashboard"></i>Dashboard</a></li>

			<!-- 	<li><a href="${pageContext.request.contextPath}/student/list"><i
					class="fa fa-sitemap"></i>List Students<span class="fa arrow"></span></a>
		 		<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath}/students">Display
							Student</a></li>
					<li><a href="${pageContext.request.contextPath}/students/add">Add
							New Student</a></li>
					<li><a
						href="${pageContext.request.contextPath}/student/update">Update
							Student</a></li>
				</ul>  
				
 				</li>
-->
			<li><a href="${pageContext.request.contextPath}/teacher/list"><i
					class="fa fa-desktop"></i>List Teacher</a></li>

			<li><a href="${pageContext.request.contextPath}/teacher/add"><i
					class="fa fa-desktop"></i>Add New Teacher</a></li>
			<li><a href="${pageContext.request.contextPath}/teacher/search"><i
					class="fa fa-bar-chart-o"></i>Search Teacher</a></li>
			<li><a href="${pageContext.request.contextPath}/teacher/update"><i
					class="fa fa-fw fa-file"></i>Update Teacher</a></li>
		</ul>

	</div>

</nav>