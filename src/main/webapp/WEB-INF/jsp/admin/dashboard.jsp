<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/jsp//admin/header.jsp"></jsp:include>
<!-- ======= Body Section ======= -->
<section id="body-section">
	<!--Body Title-->
	<div class="container-fluid">
		<div class="bodyTitle">
			<div class="row">
				<div class="col-lg-6 col-md-8">
					<h1>Dashboard</h1>
				</div>
			</div>
		</div>
	</div>
	
	<form
							action="${pageContext.servletContext.contextPath}/checkMail"
							method="post" enctype="multipart/form-data" name="loginform"
							id="loginform">
							

							<div class="form-group">
								<div id="logincaptchadiv"></div>
								<span class="redText" id="errorMsg"></span>
							</div>

							<div class="form-group mb-0 text-center">
								<button class="btn btn-primary btn-block py-2" type="submit" onclick="return validateCaptcha()">
									Log In</button>
								<div id="error_msg" class="marTop5px redTxt pb-1"
									style="float: right; padding-right: 10px;">${errorMsg}</div>
							</div>

						</form>
</section>
<jsp:include page="/WEB-INF/jsp/admin/footerjs.jsp"></jsp:include>
<script>
	//RecentFilings validation
	function searchCount() {
		var dateFrom = $('#fromDate').val();
		var dateTo = $('#toDate').val();
		if (dateTo == '' || dateFrom == '') {
			alert('From Date and To Date is required');
			return false;
		}
		if (dateFrom <= dateTo) {
			return true;
		} else {
			alert('From Date must be lesser than To Date');
			return false;
		}
	}
</script>
<jsp:include page="/WEB-INF/jsp/admin/footer.jsp"></jsp:include>
