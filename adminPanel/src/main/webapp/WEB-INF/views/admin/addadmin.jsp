
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
<%@include file="../sidebar.jsp" %>
	<div class="wrapper">
		<div class="main-panel">
			<%@include file="../header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<form:form class="form" method="post" modelAttribute="admin1"
									enctype="multipart/form-data">
									<form:input type="hidden" path="adminId" name="adminId" />
									<div class="card-content">
										<div class="card-header card-header-icon"
											data-background-color="rose">
											<i class="material-icons">perm_identity</i>
										</div>
										<div class="card-content">
											<h4 class="card-title">
												<c:choose>
													<c:when test="${edit}">
												Edit Admin Details
											</c:when>
													<c:otherwise>
												Register New Admin
											</c:otherwise>
												</c:choose>
												<small class="category"></small>
											</h4>

											<div class="row" style="margin-left: 340px">
												<div class="col-md-2 col-md-offset-1">
													<div class="fileinput fileinput-new text-center"
														data-provides="fileinput"
														style="margin-top: -10px; margin-left: 0%">
														<div class="fileinput-new thumbnail img-circle">
															<c:choose>
																<c:when test="${edit}">
																	<img
																		src="/adminPanel/resources/images/profilePicture/${admin.profilePicture}"
																		class="picture-src" id="wizardPicturePreview" title="" />
																</c:when>
																<c:otherwise>
																	<img
																		src="/adminPanel/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
																		class="picture-src" id="wizardPicturePreview" title="" />
																</c:otherwise>
															</c:choose>
														</div>
														<div
															class="fileinput-preview fileinput-exists thumbnail img-circle"
															style=""></div>
														<div>
															<span class="btn btn-round btn-rose btn-file"> <span
																class="fileinput-new">Choose Photo</span> <span
																class="fileinput-exists">Change</span> <form:input
																	type="hidden" path="adminId" /> <form:input
																	type="hidden" path="password" />
																	 <input type="file"
																id="profileImage" name="profileImage"
																path="profileImage" /></span> <br> <a href="#pablo"
																class="btn btn-danger btn-round fileinput-exists"
																data-dismiss="fileinput"><i class="fa fa-times"></i>
																Remove</a>
														</div>
													</div>
												</div>
											</div>
										
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">face</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="First Name..." path="fname" name="fname" />
											</div>
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">person</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="Last Name..." path="lname" name="lname" />
											</div>

											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">email</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="Email..." path="email" name="email" />
											</div>



											<!-- If you want to add a checkbox to this form, uncomment this code -->

											<div class="checkbox">
												<label> <%--  <form:checkbox
													name="optionsCheckboxes" path="terms"/> I agree to the <a
													href="#something">terms and conditions</a>. --%>
												</label>
											</div>
										</div>
										<div class="footer text-center">
											<c:choose>
												<c:when test="${edit}">
													<input class="btn btn-primary btn-round" type="submit"
														value="Update" formaction="/adminPanel/admin/updateAdmin" />
												</c:when>
												<c:otherwise>
													<input class="btn btn-primary btn-round" type="submit"
														value="Register" formaction="/adminPanel/admin/addAdmin" />
												</c:otherwise>
											</c:choose>
											<input class="btn btn-primary btn-round" type="submit"
												value="Back" formaction="/adminPanel/admin/adminList" />
										</div>
										</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				</div>
				<%@include file="../footer.jsp"%>
			</div>
		</div>
</body>
<!--   Core JS Files   -->
<%@include file="../corejsfiles.jsp"%>
</html>