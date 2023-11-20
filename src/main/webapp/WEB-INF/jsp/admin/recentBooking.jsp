
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
			<div class="row pt-4">
				<div class="col-lg-6 col-md-8 d-flex">
					<h1>Booking Information</h1>
				</div>
				<div class="col-lg-6 col-md-4 d-flex justify-content-end">
<jsp:include page="/WEB-INF/jsp/admin/banner.jsp"></jsp:include>
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
<c:if test="${errorMsg ne null && errorMsg eq 'Rooms not available for selected Date' }">


<div class="alert alert-danger alert-dismissable mt-3" id="err">
<button type="button" class="close" data-dismiss="alert" onclick="closeModal()"
	aria-hidden="true">×</button>
<i class="fa fa-check"></i> Rooms not available for selected Date!...
</div> 

</c:if>
<c:if test="${sucMsg ne null && sucMsg eq 'Form Saved Successfully' }">


<div class="alert alert-success alert-dismissable mt-3" id="suc">
<button type="button" class="close" data-dismiss="alert" onclick="closeModal()"
	aria-hidden="true">×</button>
<i class="fa fa-check"></i> Form Saved Successfully!...
</div> 

</c:if>
	<!--Body Content-->
	<div class="bodyContent">
		<div class="container-fluid">
			<!-- Button and Search Section-->

			<form method="post" class="theme-form mt-53"
				action="getBookingInfo"
				id="getBookingInfo">


				<div class="row ">
					<div class=" col-6 col-md-2 col-lg-2">
						<label>From Date</label> <input type="date" class="form-control"
							id="fromDateSearch" name="fromDate" value="${bookingform.fromDate}"
							autocomplete="off">
					</div>

					<div class="col-6 col-md-2 col-lg-2">
						<label>To Date</label> <input type="date" class="form-control "
							id="toDateSearch" name="toDate" value="${bookingform.toDate}"
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
							class="btn btn-block btn btn-info buttonSize col-10" value="Search"
							name="search" onclick="return validateSearch()" id="searchId">
							<i class="fa fa-search btn-icon"></i> Search
						</button>
					</div>

					<div class="col-6 col-md-2 col-lg-2 mt-4 pt-1">
						<a class="btn btn-block btn btn-secondary buttonSize col-10"
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
									<th><b> Total Amount</b></th>
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
													onclick="openEditModal('${bookingList.firstName}','${bookingList.email}','${bookingList.phone}','${bookingList.id}','${bookingList.advanceAmount}','${bookingList.finalAmount}','${bookingList.advanceRefId}','${bookingList.finalRefId}','${bookingList.totalAmount}')"
													>
													<i class="fa-solid fa-pencil"></i>
												</button>
												<button type="button" class="btn btn-danger btn-sm"
													data-toggle="tooltip" title="Cancel"
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
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closeModal()">
          <span aria-hidden="true"  >&times;</span>
        </button>
      </div>
       <form action="editUserDetails" method="POST" id="blog" role="form">
      <div class="modal-body">
       
       <div class="container">
  <div class="row">        
        <div class="col-6 pb-3">
            <label for="recipient-name" class="">First Name:</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${formData.firstName}" disabled>
         </div>
          <div class="col-6 pb-3">
            <label for="recipient-name" class="">Last Name:</label>
            <input type="text" class="form-control" id="lasttName" name="lasttName" value="${formData.lasttName}" disabled>
         </div>
         <div class="col-6 pb-3">
            <label for="recipient-name" class="">Phone Number:</label>
            <input type="text" class="form-control" id="phone" name="phone" value="${formData.phone}" disabled>
         </div>
         <div class="col-6 pb-3">
            <label for="message-text" class="">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="${formData.email}">
            </div>  
            <div class="col-6 pb-3">
            <label for="message-text" class="">Advance Amount:</label>
            <input type="text" class="form-control" id="advanceAmount" name="advanceAmount" value="${formData.advanceAmount}">
            </div>       
          <div class="col-6 pb-3">
            <label for="message-text" class="">Reference ID For  Advance Amount:</label>
            <input type="text" class="form-control" id="advanceRefId" name="advanceRefId" value="${formData.advanceRefId}">
            </div> 
            <div class="col-6 pb-3">
            <label for="message-text" class="">Final Pay Amount:</label>
            <input type="text" class="form-control" id="finalAmount" name="finalAmount" value="${formData.finalAmount}">
            </div>       
          <div class="col-6 pb-3">
            <label for="message-text" class="">Reference ID For Final Amount:</label>
            <input type="text" class="form-control" id="finalRefId" name="finalRefId" value="${formData.finalRefId}">
                        <input type="hidden" class="form-control" id="totalAmount" name="amount" value="${formData.amount}">
                                    <input type="hidden" class="form-control" id="bookingId" name="id" value="${formData.amount}">
            
            </div> 
          </div>
          </div>
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="closeModal()">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
        </form>
    </div>
  </div>
</div>
<div class="modal fade" id="blockRoomModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Block Rooms </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closeModal()">
          <span aria-hidden="true"  >&times;</span>
        </button>
      </div>
       <form action="saveBlockDetails" method="POST" id="blog" role="form">
      <div class="modal-body">
       
       <div class="container">
  <div class="row">        
        <div class="col-6 pb-3">
            <label for="recipient-name" class="">From Date:</label>
            <input type="date" class="form-control"
							id="fromDate" name="fromDate" value="${form.fromDate}"
							autocomplete="off">      
         </div>
          <div class="col-6 pb-3">
            <label for="recipient-name" class="">To Date:</label>
            <input type="date" class="form-control"
							id="toDate" name="toDate" value="${form.fromDate}"
							autocomplete="off">  
   </div>
         <div class="col-6 pb-3">
            <label for="recipient-name" class="">Room Count:</label>
            <select id="roomCount" name="countOfRooms" class="form-control" >
             <option value=""> Select Room </option>
            <option value="1"> 1    </option>
             <option value="2"> 2    </option>
              <option value="3"> 3   </option>
               <option value="4"> 4    </option>
            </select>
       </div>
         
          </div>
          </div>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="closeModal()">Close</button>
        <button type="submit" class="btn btn-primary" onclick="return validateForm()">Save</button>
      </div>
       </form>
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
	
	function openEditModal(firstName,email,phone,id,advanceAmount,finalAmount,advanceRefId,finalRefId,totalAmount){
	$('#firstName').val(firstName);
	$('#lastName').val(firstName);
	$('#email').val(email);
	$('#phone').val(phone);
	$('#advanceAmount').val(advanceAmount);
	$('#finalAmount').val(finalAmount);	
	$('#advanceRefId').val(advanceRefId);
	$('#finalRefId').val(finalRefId);
	$('#bookingId').val(id);
	$('#totalAmount').val(totalAmount);
	
	$('#exampleModal').modal('show');
}
function closeModal(){
	$('#exampleModal').modal('hide');
	$('#blockRoomModal').modal('hide');
	$('#suc').addClass("d-none");
	$('#err').addClass("d-none");
	
}
function showModalForBlock(){
	$('#blockRoomModal').modal('show');
}

function validateForm(){
	var fromDate =$('#fromDate').val();
	var toDate =$('#toDate').val();
if(fromDate == null || fromDate == ""  ){
	alert("please select From Date");
	return false;
}else if(toDate == null || toDate == "" ){
	alert("please select To Date");
	return false;
}else if(toDate < fromDate){
	alert(" To Date is should be greater than From Date");
	return false;
}
}

function validateSearch(){
	var fromDate =$('#fromDateSearch').val();
	var toDate =$('#toDateSearch').val();
if(fromDate == null || fromDate == ""  ){
	alert("please select From Date");
	return false;
}else if(toDate == null || toDate == "" ){
	alert("please select To Date");
	return false;
}else if(toDate < fromDate){
	alert(" To Date is should be greater than From Date");
	return false;
}
}
</script>


<jsp:include page="/WEB-INF/jsp/admin/footerjs.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/admin/footer.jsp"></jsp:include>