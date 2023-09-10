<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
    <div class="col-md-6">


	<!-- <div
		class="d-flex flex-column flex-md-row gap-4 py-md-4 align-items-start">
		<div class="list-group rounded-3">
			<a class="list-group-item list-group-item-action d-flex gap-3 py-3">
				<div class="d-flex gap-2 w-100 justify-content-between">
					<div class="p-2">
						<h6>Low Price</h6>
						<p class="mb-0">Your dates are ₹1,446 less than the avg.
							nightly rate of the last 60 days.</p>
					</div>
				</div>
				<h1>
					<i class="bi bi-tag theme-color"></i>
				</h1>
			</a>
		</div>
	</div> -->

	<article class="blog-post">
		<h2 class="h-4 link-body-emphasis mb-1">Confirm and pay your trip</h2>
		<div
			class="d-flex flex-column align-items-center justify-content-center">
			<div class="d-flex flex-column w-100 align-content-between">
				<div class="list-group">
					<a
						class="list-group-item  border-0 list-group-item-action d-flex gap-3 py-3">
						<div class="d-flex w-100 justify-content-between">
							<div class="p-2">
								<h6>Dates</h6>
								<p class="mb-0">
									<span class="checkinDate"> </span> - <span class="checkoutDate">
									</span>
								</p>
								<!-- <input type="hidden" id="daterangepicker12"> -->
							</div>
						</div>
						<p data-bs-toggle="modal">
							<u>
								<button name="daterangeVal" class="btn btn-link text-dark">Edit
								</button>
							</u>
						</p>
					</a> <input id="checkin" class="checkin" type="hidden"> <input
						id="checkout" class="checkout" type="hidden">
				</div>
			</div>
			<div class="d-flex flex-column w-100 align-content-between">
				<div class="list-group border-0">
					<a
						class="list-group-item  border-0 list-group-item-action d-flex gap-3 py-3">
						<div class="d-flex w-100 justify-content-between">
							<div class="p-2">
								<h6>Guests</h6>
								<p class="mb-0 roomAndPerson">1 guests</p>
							</div>
						</div>
						<p data-bs-toggle="modal" data-bs-target="#guestModel">
							<u>Edit</u>
						</p>
					</a>
				</div>
			</div>
		</div>

		<hr>

		<h3 class="py-1 h4 fw-bold">Your Details</h3>
		<form>
			<div class="form-floating">
				<input type="text" class="form-control floatingInput" id="firstName" 
				placeholder="Password"> <label for="floatingInput">First Name</label>
			</div>
						<span id="firstNameError"></span> <span id="lastNameError"></span>
<br>
			<div class="form-floating">
				<input type="text" class="form-control floatingInput" id="lastName"
					placeholder="Password"> <label for="floatingPassword">Last Name</label>
			</div>
			
			<p class="text-secondary">
				<small></small>
			</p>
			<div class="py-2">
				<div class="form-floating">
					<input type="email" class="form-control floatingInput" id="email"
						placeholder="name@example.com"> <label for="floatingInput">Email</label>
				</div>
				<p class="text-secondary">
					<small></small>
				</p>
				<span id="emailError"></span>
			</div>
			<div class="w-100 m-auto py-2">
				<div class="form-floating">
					<input type="email" class="form-control floatingInput"
						id="phoneNum" placeholder="name@example.com"> <label
						for="floatingInput">Phone Number</label>
				</div>
				<span id="phoneNumError"></span>
			</div>

			<div class="form-signin w-100 m-auto">



				<div class="w-100 m-auto py-2">
					<div class="form-floating">

						<textarea class="form-control h-100 floatingInput" id="address"
							required placeholder="Address"></textarea>
						<label for="floatingInput">Address</label>
					</div>
					<span id="addressError"></span>
				</div>
				<p class="text-dark fs-6">
					<small>By selecting <b>Agree and continue</b>, I agree to
						vvr <a href="">Terms of Service</a>, <a href="">Payment
							Terms of Service</a> and <a href="">Nondiscrimination Policy</a> and
						acknowledge the <a href="">Privacy Policy</a></small>
				</p>
				<span class="DateError"></span>
				<button
					class="btn btn-primary w-100 py-2 theme-bg-color text-white border-0"
					type="button" onclick="return saveBookingDetails()">Agree
					and continue</button>

			</div>
		</form>
</div>
<!-- <script>
$(function() {

	const date = new Date();
	const date1 = new Date();
	var checkin= sessionStorage.getItem("checkin")!=null && sessionStorage.getItem("checkin")!=undefined?sessionStorage.getItem("checkin"):'';
	var checkout= sessionStorage.getItem("checkout")!=null && sessionStorage.getItem("checkout")!=undefined?sessionStorage.getItem("checkout"):'';
var minDate,maxDate;
if(sessionStorage.getItem("checkinVal")!=null && sessionStorage.getItem("checkinVal")!=undefined && sessionStorage.getItem("checkoutVal")!=null && sessionStorage.getItem("checkoutVal")!=undefined)
{
	 $('.checkinDate').html(sessionStorage.getItem("checkinVal"));
	    $('.checkoutDate').html(sessionStorage.getItem("checkoutVal"));
	    
}
		if(checkin !=null && checkin !='' && checkout !=null && checkout !=''){
			minDate=checkin;
			maxDate=checkout;
		}else{
			minDate=date;
			var tomorrow = new Date(date);
			tomorrow.setDate(date.getDate()+1);
			tomorrow.toLocaleDateString();
			maxDate=tomorrow

		} 
	
    $('button[name="daterange"]').daterangepicker({
	   "startDate": minDate,
	    "endDate": maxDate,
	    
	    "trigger": 'manual',
	    }, function(start, end, label) {

	    var amount=	getBusinessDatesCount(start,end);
	    alert(amount)
	    	alert(start.format('DD MMM YYYY'))
	    $('.checkinDate').html(start.format('DD MMM YYYY'));
	    $('.checkoutDate').html(end.format('DD MMM YYYY'));
	    	
	    	
	    	 $('#checkin').val(start);
	    	 $('#checkout').val(end);
	    	 
	    	 sessionStorage.setItem("checkin",start.format('MM/DD/YYYY')); 
	    	 sessionStorage.setItem("checkout",end.format('MM/DD/YYYY'));
	    	 sessionStorage.setItem("checkinVal",start.format('DD MMM YYYY')); 
	    	 sessionStorage.setItem("checkoutVal",end.format('DD MMM YYYY'));
		    	 updateRoomAndGuestInfo();
		    	// document.getElementById('submitLabelName').innerHTML="Reserve";
		    	 $('.showPayAmount').addClass("d-block");
		    	 $('.showPayAmount').removeClass("d-none");

	  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");
	  $('button[name="daterange"]').daterangepicker({
		   "startDate": start,
		    "endDate": end,
		    
		    "trigger": 'manual',
		    });
	 
	 
	  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");

	    });

}	  

);
</script> -->


