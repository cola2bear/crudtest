<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<body class="hold-transition sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">

		<!-- Navbar -->
		<%@include file="/WEB-INF/views/include/navbar.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@include file="/WEB-INF/views/include/sidebar.jsp" %>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Starter Page</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
						<div class="content">
				<div class="container-fluid">
                    <h2>게시판 목록</h2>
                    <table style="border:1px solid #ccc">
                        <colgroup>
                            <col width="10%"/>
                            <col width="*"/>
                            <col width="15%"/>
                            <col width="20%"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">글번호</th>
                                <th scope="col">제목</th>
                                <th scope="col">조회수</th>
                                <th scope="col">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${fn:length(list) > 0}">
                                    <c:forEach items="${list}" var="row">
                                        <tr>
                                            <td>${row.IDX}</td>
                                            <td>${row.TITLE}</td>
                                            <td>${row.HIT_CNT}</td>
                                            <td>${row.CREA_DTM}</td>
                                        </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <tr>
                                        <td colspan="4">조회된 결과가 없습니다.</td>
                                    </tr>
                                </c:otherwise>
                            </c:choose>
                        </tbody>
                    </table>
                </div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

	</div>
	<!-- ./wrapper -->
	<%@include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<%@include file="/WEB-INF/views/include/script.jsp" %>
</body>
</html>
