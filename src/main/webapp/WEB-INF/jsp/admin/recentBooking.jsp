
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.framework.config.PropertyFileConfig"%>

<jsp:include page="/WEB-INF/jsp/admin/header.jsp"></jsp:include>

<!-- ======= Body Section ======= -->
<section id="body-section">
	<!--Body Title-->
	<div class="container-fluid">
		<div class="bodyTitle">
			<div class="row">
				<div class="col-lg-6 col-md-8 d-flex">
					<h1>Booking Information</h1>
				</div>

			</div>
		</div>
	</div>
	<div class="alert alert-success alert-dismissable mt-3" style="display: none;"id="suc">
		<button type="button" class="close" data-dismiss="alert"
			aria-hidden="true">×</button>
		<i class="fa fa-check"></i> Booking has been deleted successfully!...
	</div> 
	<!--//-->

	<!--Body Content-->
	<div class="bodyContent">
		<div class="container-fluid">
			<!-- Button and Search Section-->

			<form method="post" class="theme-form mt-53"
				action="${pageContext.servletContext.contextPath}/getBookingInfo"
				id="getBookingInfo">


				<div class="row ">
					<div class=" col-6 col-md-2 col-lg-2">
						<label>From Date</label> <input type="date" class="form-control"
							id="fromDate" name="fromDate" value="${bookingform.fromDate}"
							autocomplete="off">
					</div>

					<div class="col-6 col-md-2 col-lg-2">
						<label>To Date</label> <input type="date" class="form-control "
							id="toDate" name="toDate" value="${bookingform.toDate}"
							autocomplete="off">
					</div>

					<%-- <div class=" col-6 col-md-2 col-lg-2">
						<label>Keyword</label> <input type="text" class="form-control "
							id="searchKeyword" name="searchKeyword"
							value="${bookingform.searchKeyword}">
					</div>
 --%>
					

					<div class="col-6 col-md-2 col-lg-2 mt-4 pt-1">
						<button type="submit"
							class="btn btn-block btn btn-info buttonSize" value="Search"
							name="search" onclick="return validateSearch()" id="searchId">
							<i class="fa fa-search btn-icon"></i> Search
						</button>
					</div>

					<div class="col-6 col-md-2 col-lg-2 mt-4 pt-1">
						<a class="btn btn-block btn btn-secondary buttonSize"
							value="Reset Search" name="reset" style="color: white"
							onclick="javascript:location.href='/admin/getBookingInfo';">
							Reset Search </a>
					</div>
				</div>


				<label></label> <input type="hidden" class="form-control"
					id="recordCount" name="recordCount" value="${recordCount}"
					class="txtBox100px marRight10px"> <input type="hidden"
					id="limit" name="limit" value="${bookingform.limit}"
					class="txtBox100px marRight10px"> <input type="hidden"
					class="form-control" id="offSet" name="offSet"
					value="${bookingform.offSet}" class="txtBox100px marRight10px">
			</form>
			<div class="form-group col-md-11" id="errorMsg"></div>


			<div class="row p-1 mb-5">
<!-- 				<div class="col-8">
					<b>Note: </b>Keyword can be  Name or  Email
				</div> -->
				<%-- <div class="col-4 text-right">

					<b>Total Records: ${recordCount}</b>
				</div> --%>
			</div>
		</div>

	</div>
	<!-- //Button andSearch Section-->
	<!-- Admin Table Section-->
	<div class="bodyContent">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-lg-12">
					<div class="table-responsive">
						<table class="table table-bordered table-striped admin-table"
							id="recent_filing_list">
							<thead class="thead-light thead-nowrap">

								<tr role="row">
									<th><b>SL No</b></th>
									
									<th><b> From Date</b></th>
									<th><b> To Date</b></th>
									<th><b> Name</b></th>
									<th><b> Email</b></th>
									<th><b> Phone</b></th>
									<th><b> ToTal Amount</b></th>
									<th><b>Paid Amount</b></th>
									<th><b> Balance</b></th>
									<!-- <th><b>Action</b></th> -->
										<th><b>Action</b></th>
									
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${bookingList}" var="bookingList"
									varStatus="loopCounter">
									<tr>
										<td>${loopCounter.index+1}</td>
										<td>${bookingList.fromDate}</td>
										<td>${bookingList.toDate}</td>
										<td>${bookingList.firstName}</td>
										<td>${bookingList.email}</td>
										<td>${bookingList.phone}</td>
											<td>${bookingList.totalAmount}</td>
												<td>${bookingList.paidAmount}</td>
													<td>${bookingList.balAmount}</td>

										
										
											<td>
											<button type="button" class="btn btn-primary btn-sm"
													data-toggle="tooltip" title="edit"
													data-target="#exampleModal" 
													>
													<i class="fa-solid fa-pencil"></i>
												</button>
												<button type="button" class="btn btn-danger btn-sm"
													data-toggle="tooltip" title="delete"
													onclick="return cancelfiling('${bookingList.id}');">
													<i class="fa-solid fa-trash"></i>
												</button>
											
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
	<br>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>


	
</section>

<script>
function cancelfiling(id) {
	if (confirm("Do you want Delete this Booking?")) {
		
	$.ajax({
		url: '/cancelBooking',
		type: 'GET',
		data: {
			"id": id
		},
		success: function(response) {
			 document.getElementById("suc").style.display="block";
        setTimeout(function() {
									window.location.reload();
								}, 1000);
								  $("#suc").fadeOut(30000); 
			
		
		}
	});
}
}	
$(document).ready(function () {
    $('#recent_filing_list').DataTable();
});
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').trigger('focus')
	})
</script>


<jsp:include page="/WEB-INF/jsp/admin/footerjs.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/admin/footer.jsp"></jsp:include>