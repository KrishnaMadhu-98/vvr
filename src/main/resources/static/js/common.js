
	

function emailValidate() {
		$("#emailError").html('');
		var email = $('#email').val();
		var emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (email != null && email != '') {
			if (!(emailFilter.test(email))) {
				$("#emailError ")
						.html(
								'<div class="text-danger"> Invalid Email Address</div>');
				$('#email').val('');
				return false;
			}
		} else {
			$("#emailError ")
			.html('<div class="text-danger">  Enter the email id</div>');
			return false;
		}
	}
	

function getBusinessDatesCount(checkin,checkout) {
	var startDate = new Date(checkin);
	var endDate = new Date(checkout);
    let weekDaysCount = 0;
    let weekendDaysCount = 0;
    var amountval=0;
    
    startDate.setDate(startDate.getDate() + 1);
    const curDate = new Date(startDate.getTime());
    sessionStorage.removeItem("weekendDaysCount");
	sessionStorage.removeItem("weekendAmount");
	sessionStorage.removeItem("weekDaysCount");
	sessionStorage.removeItem("weekDaysAmount");
	$('.weekDaysDisplay').removeClass('d-none');
	$('.weekDaysDisplay').removeClass('d-block');
	$('.weekendDaysDisplay').removeClass('d-block');
	$('.weekendDaysDisplay').removeClass('d-none');
    while (curDate < endDate) {
        const dayOfWeek = curDate.getDay();
        if(dayOfWeek !== 0 && dayOfWeek !== 6 &&  dayOfWeek !== 1) weekDaysCount++
        else weekendDaysCount++;
        curDate.setDate(curDate.getDate() + 1);
    }
    if(weekDaysCount>0)
    	{
    	amountval =amountval + weekDaysCount * 2500;
    	sessionStorage.setItem("weekDaysCount", weekDaysCount);
    	sessionStorage.setItem("weekDaysAmount",  parseInt(document.getElementById('countOfRooms').innerText) * weekDaysCount * 2500);
    	} if(weekendDaysCount > 0){
    		amountval =amountval + weekendDaysCount * 3000;
    		sessionStorage.setItem("weekendDaysCount", weekendDaysCount);
        	sessionStorage.setItem("weekendAmount",  parseInt(document.getElementById('countOfRooms').innerText)* weekendDaysCount * 3000);
    	}
    	//$('#amountVal').val(amountval)
    	if(amountval ==0){
    		alert("Choose valid Date")
    	}
    	$('.weekDaysCount').html(sessionStorage.getItem("weekDaysCount"));
		$('.weekDaysAmount').html(sessionStorage.getItem("weekDaysAmount"));	    	
		$('.weekendDaysCount').html(sessionStorage.getItem("weekendDaysCount"));
		$('.weekendAmount').html(sessionStorage.getItem("weekendAmount"));		
		$('.weekDaysDisplay').addClass(sessionStorage.getItem("weekDaysCount") !=null ?'d-block':'d-none');
		$('.weekendDaysDisplay').addClass(sessionStorage.getItem("weekendDaysCount") !=null ?'d-block':'d-none');
    	return amountval;

}


function getroomsCount(val){
	var roomsCount = $('#roomsCount').val();
	if(val=='plus'){
		roomsCount =parseInt(roomsCount) + 1;
	}else if(val=='minus'){
		roomsCount =parseInt(roomsCount) - 1;
	}
	var a= "<c:out value='${";
	var b="}'/>"
	//	document.getElementById('#roomsCount2').value=roomsCount;
	$('#roomsCount2').val(roomsCount);
	
}

function saveBookingDetails(){
	var fromdate= sessionStorage.getItem("checkin")!=null && sessionStorage.getItem("checkin")!=undefined?sessionStorage.getItem("checkin"):'';
	var todate= sessionStorage.getItem("checkout")!=null && sessionStorage.getItem("checkout")!=undefined?sessionStorage.getItem("checkout"):'';
	var fromdateValue= sessionStorage.getItem("checkinValue")!=null && sessionStorage.getItem("checkinValue")!=undefined?sessionStorage.getItem("checkinValue"):'';
	var todateValue= sessionStorage.getItem("checkoutValue")!=null && sessionStorage.getItem("checkoutValue")!=undefined?sessionStorage.getItem("checkoutValue"):'';
	
	var countOfAdults = parseInt(document.getElementById('countOfAdults').innerText) ;
	
	var countOfChild =parseInt(document.getElementById('countOfChild').innerText);
	var countOfRooms = parseInt(document.getElementById('countOfRooms').innerText);
	var amt=0
	
	var validRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if (fromdate !=null && fromdate != undefined && todate !=null && todate != undefined ){
		
    	var amt = getBusinessDatesCount(fromdateValue,todateValue);
    	amt =  parseInt(document.getElementById('countOfRooms').innerText) * amt ; 
    		sessionStorage.setItem("amountval", amt);

	}
	
$(".DateError").html('');
if(fromdate == '' || fromdate ==null || fromdate ==undefined){
	$(".DateError").html(
	'<div class="text-danger"> Date is required.</div>');
	return false;
}
	    var emailId = $('#email').val();
		var phone = $('#phoneNum').val();
		var firstName = $('#firstName').val();
		var lastName = $('#lastName').val();
		var address = $('#address').val();
    	var  amt =amt;
		if (!firstName) {
			$("#lastNameError ").html('');
			$("#emailError ").html('');
			$("#phoneNumError ").html('');
			$("#addressError ").html('');
			$("#firstNameError").html(
					'<div class="text-danger"> First Name is required.</div>');
			return false;
		} else if (!lastName) {
			$("#firstNameError ").html('');
			$("#emailError ").html('');
			$("#phoneNumError ").html('');
			$("#addressError ").html('');
			$("#lastNameError").html(
					'<div class="text-danger"> Last Name is required.</div>');
			return false;

		} else if (!emailId) {
			$("#firstNameError ").html('');
			$("#lastNameError ").html('');
			$("#phoneNumError ").html('');
			$("#emailError ").html(
					'<div class="text-danger"> Email Id is required.</div>');
			return false;

		} else if(!(emailId).match(validRegex)){
			$("#firstNameError ").html('');
			$("#lastNameError ").html('');
			$("#phoneNumError ").html('');
			$("#emailError ").html(
					'<div class="text-danger"> Enter Valid Mail Id.</div>');
			return false;
		}
			else if (!phone) {
			$("#firstNameError ").html('');
			$("#emailError ").html('');
			$("#lastNameError ").html('');
			$("#addressError ").html('');
			$("#phoneNumError ").html(
					'<div class="text-danger">Contact Number is required.</div>');
			return false;

		}else if(phone.length < 10){
			$("#phoneNumError").html('<div class="text-danger">Contact Number must be atleast 10 Digit.</div>');
			return false;
		}
		else if (!address) {
			$("#firstNameError ").html('');
			$("#emailError ").html('');
			$("#lastNameError ").html('');
			$("#phoneNumError ").html('');
			$("#addressError ").html(
					'<div class="text-danger">Address is required.</div>');
			return false;

		}

		$.ajax({
			type : "POST",
			contentType : 'application/json',
			url : 	"/saveBookingDetails",
			data : JSON.stringify({
				"email" : emailId,
				"phone" : phone,
				"firstName" : firstName,
				"lastName" : lastName,
				"address":address,
				"amount":amt,
				"fromDate" : fromdate,
				"toDate" : todate,
				"countOfAdults":countOfAdults,
				"countOfChild":countOfChild,
				"countOfRooms":countOfRooms
			}),
			
			success : function(response) {
				
				if(response.code==200){
					$('#myModal1').modal('show');
					sessionStorage.clear()

				}else{
					$('#myModal2').modal('show');
				}
				
			},
			error : function(res) {
				
				$('#myModalError').modal('show');

			}

		});
		return false;
	}

function showAndHidePopup(){	
	if(!$('#near').is(':visible'))
	{
		$('#near').removeClass("d-none");
	}else{
		$('#near').addClass("d-none");
	}
}

function addRoomCount(val){
	var noOfRooms=document.getElementById('countOfRooms').innerText;
	if(val=='minus'){
		noOfRooms = parseInt(noOfRooms) - 1 ;
		noOfRooms = noOfRooms <=0 ?1 : noOfRooms;
		document.getElementById('countOfAdults').innerHTML=1;
	}else{
		noOfRooms = parseInt(noOfRooms) + 1;
		noOfRooms = noOfRooms >=4 ? 4 : noOfRooms;
	}
	document.getElementById('countOfRooms').innerHTML=noOfRooms;
	$('.countOfRooms').html(noOfRooms);
	$('.roomAndPerson').html(document.getElementById('countOfRooms').innerText+' Rooms, '+document.getElementById('countOfAdults').innerText+' Adults, '+document.getElementById('countOfChild').innerText+' Child')

}

function addAdultsCount(val){
	var noOfAdults=document.getElementById('countOfAdults').innerText;
	var noOfRooms = parseInt(document.getElementById('countOfRooms').innerText);
	maxAdult =2;
	if(noOfRooms ==2){
		maxAdult =4;
	}else if(noOfRooms ==3){
		maxAdult =6;
	}else if(noOfRooms ==4){
		maxAdult =8;
	}
	if(val=='minus'){
		noOfAdults = parseInt(noOfAdults) - 1 ;
		noOfAdults = noOfAdults <=0 ?1 : noOfAdults;
	}else{
		noOfAdults = parseInt(noOfAdults) + 1;
		noOfAdults = noOfAdults >=maxAdult ? maxAdult : noOfAdults;

	}
	document.getElementById('countOfAdults').innerHTML=noOfAdults;
	$('.countOfAdults').html(noOfAdults);
	$('.roomAndPerson').val(document.getElementById('countOfRooms').innerText+' Rooms, '+document.getElementById('countOfAdults').innerText+' Adults, '+document.getElementById('countOfChild').innerText+' Child')

}

function addChildCount(val){
	var noOfChild=document.getElementById('countOfChild').innerText;
	var noOfRooms = parseInt(document.getElementById('countOfRooms').innerText);
	maxChild =2;
	if(noOfRooms ==2){
		maxChild =4;
	}else if(noOfRooms ==3){
		maxChild =6;
	}else if(noOfRooms ==4){
		maxChild =8;
	}
	if(val=='minus'){
		noOfChild = parseInt(noOfChild) - 1 ;
		noOfChild = noOfChild < 0 ?0 : noOfChild;
	}else{
		noOfChild = parseInt(noOfChild) + 1;
		noOfChild = noOfChild >=maxChild ? maxChild : noOfChild;

	}
	document.getElementById('countOfChild').innerHTML=noOfChild;
	$('.countOfChild').html(noOfChild);
	$('.roomAndPerson').html(document.getElementById('countOfRooms').innerText+' Rooms, '+document.getElementById('countOfAdults').innerText+' Adults, '+document.getElementById('countOfChild').innerText+' Child')

}

function updateRoomAndGuestInfo(val=null){
	var checkin = $('#checkin').val();
	var checkout = $('#checkout').val();
	$('.guestItem').removeClass('d-none');
	$('.guestItem').removeClass('d-block');
	$('.guestItem1').removeClass('d-none');
	$('.guestItem1').removeClass('d-block');
	if (checkin !=null && checkin != undefined && checkout !=null && checkout != undefined ){
		
    	var amt = getBusinessDatesCount(checkin,checkout);
    	amt =  parseInt(document.getElementById('countOfRooms').innerText) * amt ; 
    		sessionStorage.setItem("amountval", amt);
    		$('.payAmount').html(amt)

	}
	$('.roomAndPerson').html(document.getElementById('countOfRooms').innerText+' Rooms, '+document.getElementById('countOfAdults').innerText+' Adults, '+document.getElementById('countOfChild').innerText+' Child')
	 if ( $('.guestItem').css('display') != 'none')
    {
	$('.guestItem').addClass('d-none');
	$('.guestItem').removeClass('d-block');
			}
	 if ( $('.guestItem1').css('display') != 'none')
	    {
		$('.guestItem1').addClass('d-none');
		$('.guestItem1').removeClass('d-block');
		}
	
	$(".modalClose").click()
	sessionStorage.setItem("countOfRooms", document.getElementById('countOfRooms').innerText);
	sessionStorage.setItem("countOfChild", document.getElementById('countOfChild').innerText);
	sessionStorage.setItem("countOfAdults", document.getElementById('countOfAdults').innerText);
	val=='search' || val=='checkAvail' || val=='overView'?checkAvailableRooms(val):'';
}

function searchVal(){
	$('#near').addClass("d-none");
	var selectedDate = $('#daterange').val();
if (selectedDate !=null && selectedDate != undefined ){
		
    	var amt = getBusinessDatesCount(selectedDate.split("-")[0],selectedDate.split("-")[1]);
    	amt =  parseInt(document.getElementById('countOfRooms').innerText) * amt ; 
    		sessionStorage.setItem("amountval", amt);

	}
	sessionStorage.setItem("date", $('#daterange').val());
	sessionStorage.setItem("countOfRooms", document.getElementById('countOfRooms').innerText);
	sessionStorage.setItem("countOfChild", document.getElementById('countOfChild').innerText);
	sessionStorage.setItem("countOfAdults", document.getElementById('countOfAdults').innerText);
	sessionStorage.setItem("countOfDays", document.getElementById('countOfDays').innerText);

	window.location.href = 	"/personalInfo";
}


function hidepopover(){
	$('#near').addClass("d-none");
}

$( document ).ready(function() {
	$('.countOfRooms').html(sessionStorage.getItem("countOfRooms")!=null && sessionStorage.getItem("countOfRooms")!=undefined && sessionStorage.getItem("countOfRooms")!=null ? sessionStorage.getItem("countOfRooms"):'1') ;
	$('.countOfAdults').html(sessionStorage.getItem("countOfAdults")!=null && sessionStorage.getItem("countOfAdults")!=undefined ? sessionStorage.getItem("countOfAdults"):'1');
	$('.countOfChild').html(sessionStorage.getItem("countOfChild")!=null && sessionStorage.getItem("countOfChild")!=undefined ? sessionStorage.getItem("countOfChild"):'0');
	$('.roomAndPerson').html(document.getElementById('countOfRooms').innerHTML +' Rooms, '+document.getElementById('countOfAdults').innerHTML+' Adults, '+document.getElementById('countOfChild').innerHTML+' Child');
    
	if(sessionStorage.getItem("checkinVal")!=null && sessionStorage.getItem("checkinVal")!=undefined && sessionStorage.getItem("checkoutVal")!=null && sessionStorage.getItem("checkoutVal")!=undefined)
{
	 $('.checkinDate').html(sessionStorage.getItem("checkinVal"));
	    $('.checkoutDate').html(sessionStorage.getItem("checkoutVal"));
	    $('.payAmount').html(sessionStorage.getItem("amountval"));
		$('#checkin').val(sessionStorage.getItem("checkinValue"));
		$('#checkout').val(sessionStorage.getItem("checkoutValue"));		
		$('.weekDaysCount').html(sessionStorage.getItem("weekDaysCount"));
		$('.weekDaysAmount').html(sessionStorage.getItem("weekDaysAmount"));	    	
		$('.weekendDaysCount').html(sessionStorage.getItem("weekendDaysCount"));
		$('.weekendAmount').html(sessionStorage.getItem("weekendAmount"));		
		$('.weekDaysDisplay').addClass(sessionStorage.getItem("weekDaysCount") !=null ?'d-block':'d-none');
		$('.weekendDaysDisplay').addClass(sessionStorage.getItem("weekendDaysCount") !=null ?'d-block':'d-none');
		$('.showPayAmount').addClass("d-block");
		$('.showPayAmount').removeClass("d-none");
	    
}
	

});

function redirectPage(){
	window.location.href="/"
}

//new version
function showSearchModal(){
	$('.navDiv').addClass('d-none');
	$('.search-modal').removeClass('d-none');
	$('.search-modal').addClass('d-block');	
}

function showAvail(){
	var fromdate= sessionStorage.getItem("checkin")!=null && sessionStorage.getItem("checkin")!=undefined?sessionStorage.getItem("checkin"):'';
	var todate= sessionStorage.getItem("checkout")!=null && sessionStorage.getItem("checkout")!=undefined?sessionStorage.getItem("checkout"):'';
	$(".DateError").html('');

	if(fromdate == '' || fromdate ==null || fromdate ==undefined){
		$(".DateError").html(
		'<div class="text-danger"> Date is required.</div>');
		return false;
	}	
	$('#showReserve').focus();
	$('.navDiv').addClass('d-block');
	$('.navDiv').removeClass('d-none');

	$('.search-modal').addClass('d-none');
	$('.search-modal').removeClass('d-block');	
	            
}
function showAvailability(){
	var fromdate= sessionStorage.getItem("checkin")!=null && sessionStorage.getItem("checkin")!=undefined?sessionStorage.getItem("checkin"):'';
	var todate= sessionStorage.getItem("checkout")!=null && sessionStorage.getItem("checkout")!=undefined?sessionStorage.getItem("checkout"):'';
	$(".DateError").html('');

	if(fromdate == '' || fromdate ==null || fromdate ==undefined){
		$(".DateError").html(
		'<div class="text-danger"> Date is required.</div>');
		return false;
	}	
	window.location.href = 	"/overView";

	            
}
function openGuest(){
	if ( ($('.guestItem').css('display') == 'none'))
    {
		$('.guestItem').addClass('d-block');
		$('.guestItem').removeClass('d-done');
			}else{
				$('.guestItem').addClass('d-done');
				$('.guestItem').removeClass('d-block');
			}
	
	
}
function openGuest1(){
	if ( ($('.guestItem1').css('display') == 'none'))
    {
		$('.guestItem1').addClass('d-block');
		$('.guestItem1').removeClass('d-done');
			}else{
				$('.guestItem1').addClass('d-done');
				$('.guestItem1').removeClass('d-block');
			}
	
}

function hideSearchModal(){
	$('.navDiv').removeClass('d-none');
	$('.navDiv').addClass('d-block');	
	$('.search-modal').removeClass('d-block');
	$('.search-modal').addClass('d-none');	
	$('.guestItem1').addClass('d-done');
	$('.guestItem1').removeClass('d-block');
	$('#isGuestPanel1').val('false');
}


		
	$(function() {
		const date = new Date();
		const date1 = new Date();
		var checkin = sessionStorage.getItem("checkin") != null
				&& sessionStorage.getItem("checkin") != undefined ? sessionStorage
				.getItem("checkin") : '';
		var checkout = sessionStorage.getItem("checkout") != null
				&& sessionStorage.getItem("checkout") != undefined ? sessionStorage
				.getItem("checkout") : '';
		var minDate, maxDate;
		if (sessionStorage.getItem("checkinVal") != null
				&& sessionStorage.getItem("checkinVal") != undefined
				&& sessionStorage.getItem("checkoutVal") != null
				&& sessionStorage.getItem("checkoutVal") != undefined) {
			$('.checkinDate').html(sessionStorage.getItem("checkinVal"));
			$('.checkoutDate').html(sessionStorage.getItem("checkoutVal"));

		}
		if (checkin != null && checkin != '' && checkout != null && checkout != '') {
			minDate = checkin;
			maxDate = checkout;
		} else {
			minDate = date;
			var tomorrow = new Date(date);
			tomorrow.setDate(date.getDate() + 1);
			tomorrow.toLocaleDateString();
			maxDate = tomorrow

		}

		$('#daterange1')
		.daterangepicker(
				{
					"minDate" : date,
					"startDate" : minDate,
					"endDate" : maxDate,
					"autoapply" : 'manual',
				},
				function(start, end, label) {

					setDateRangeInAllDP(start,end);

				});
		 $('#daterange2')
				.daterangepicker(
						{
							"minDate" : date,
							"startDate" : minDate,
							 "endDate": maxDate,
							"autoapply" : 'manual',

						},
						function(start, end, label) {

							setDateRangeInAllDP(start,end)

						}); 
		 $('.daterange2')
			.daterangepicker(
					{
						"minDate" : date,
						"startDate" : minDate,
						"endDate" : maxDate,
						"autoapply" : 'manual',
					},
					function(start, end, label) {
						setDateRangeInAllDP(start,end);						
					});
		 
		/* var drp = $('#daterange2').data('daterangepicker');
		 drp.setStartDate(moment( $('#daterange2').val(), 'DD-MM-YYYY').add(6, 'days'))*/;});
	
	
	
	
	
	
	
	function setDateRangeInAllDP(start,end)
	{     
		$('.checkinDate').html(start.format('DD MMM YYYY'));
		$('.checkoutDate').html(end.format('DD MMM YYYY'));

		$('#checkin').val(start);
		$('#checkout').val(end);
		sessionStorage.setItem("checkin", start
				.format('MM/DD/YYYY'));
		sessionStorage.setItem("checkout", end
				.format('MM/DD/YYYY'));
		sessionStorage.setItem("checkinVal", start
				.format('DD MMM YYYY'));
		sessionStorage.setItem("checkoutVal", end
				.format('DD MMM YYYY'));
		sessionStorage.setItem("checkinValue", start
				);
		sessionStorage.setItem("checkoutValue", end
				);
		updateRoomAndGuestInfo();
		document.getElementById('submitLabelName').innerHTML = "Booking Your Trip";
		$('.showPayAmount').addClass("d-block");
		$('.showPayAmount').removeClass("d-none");

		console
				.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");
const date = new Date();
		$('#daterange1').data('daterangepicker').setStartDate(start);
	      $('#daterange1').data('daterangepicker').setEndDate(end);
	      $('#daterange2').data('daterangepicker').setStartDate(start);
	      $('#daterange2').data('daterangepicker').setEndDate(end);
	      $('.daterange2').data('daterangepicker').setStartDate(start);
	      $('.daterange2').data('daterangepicker').setEndDate(end);	      
	}
	
	$(function() {
		const date = new Date();
		const date1 = new Date();
		var checkin = sessionStorage.getItem("checkin") != null
				&& sessionStorage.getItem("checkin") != undefined ? sessionStorage
				.getItem("checkin") : '';
		var checkout = sessionStorage.getItem("checkout") != null
				&& sessionStorage.getItem("checkout") != undefined ? sessionStorage
				.getItem("checkout") : '';
		var minDate, maxDate;
		if (sessionStorage.getItem("checkinVal") != null
				&& sessionStorage.getItem("checkinVal") != undefined
				&& sessionStorage.getItem("checkoutVal") != null
				&& sessionStorage.getItem("checkoutVal") != undefined) {
			$('.checkinDate').html(sessionStorage.getItem("checkinVal"));
			$('.checkoutDate').html(sessionStorage.getItem("checkoutVal"));

		}
		if (checkin != null && checkin != '' && checkout != null && checkout != '') {
			minDate = checkin;
			maxDate = checkout;
		} else {
			minDate = date;
			var tomorrow = new Date(date);
			tomorrow.setDate(date.getDate() + 1);
			tomorrow.toLocaleDateString();
			maxDate = tomorrow

		}

		var picker = $('button[name="daterangeVal"]')
				.daterangepicker(
						{
							"startDate" : minDate,
							"endDate" : maxDate,
							"autoapply" : 'manual',
							"minDate" : date
						},
						function(start, end, label) {

							$('.checkinDate').html(start.format('DD MMM YYYY'));
							$('.checkoutDate').html(end.format('DD MMM YYYY'));

							$('#checkin').val(start);
							$('#checkout').val(end);
							sessionStorage.setItem("checkin", start
									.format('MM/DD/YYYY'));
							sessionStorage.setItem("checkout", end
									.format('MM/DD/YYYY'));
							sessionStorage.setItem("checkinVal", start
									.format('DD MMM YYYY'));
							sessionStorage.setItem("checkoutVal", end
									.format('DD MMM YYYY'));
							updateRoomAndGuestInfo();
							document.getElementById('submitLabelName').innerHTML = "Booking Your Trip";
							$('.showPayAmount').addClass("d-block");
							$('.showPayAmount').removeClass("d-none");
							
							console
									.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");

						}); });
	
	function checkAvailableRooms(val){
		var fromdate= sessionStorage.getItem("checkin")!=null && sessionStorage.getItem("checkin")!=undefined?sessionStorage.getItem("checkin"):'';
		var todate= sessionStorage.getItem("checkout")!=null && sessionStorage.getItem("checkout")!=undefined?sessionStorage.getItem("checkout"):'';
		var fromdateValue= sessionStorage.getItem("checkinValue")!=null && sessionStorage.getItem("checkinValue")!=undefined?sessionStorage.getItem("checkinValue"):'';
		var todateValue= sessionStorage.getItem("checkoutValue")!=null && sessionStorage.getItem("checkoutValue")!=undefined?sessionStorage.getItem("checkoutValue"):'';
		
		var countOfAdults = parseInt(document.getElementById('countOfAdults').innerText) ;
		
		var countOfChild =parseInt(document.getElementById('countOfChild').innerText);
		var countOfRooms = parseInt(document.getElementById('countOfRooms').innerText);
		var amt=sessionStorage.getItem("amountval");
		
				
	$(".DateError").html('');
	if(fromdate == '' || fromdate ==null || fromdate ==undefined){
		$(".DateError").html(
		'<div class="text-danger"> Date is required.</div>');
		return false;
	}
		   
			
			$.ajax({
				type : "POST",
				//contentType : 'application/json',
				url : 	"checkAvailablity",
				data : {
					"amount":amt,
					"fromDate" : fromdate,
					"toDate" : todate,
					"countOfAdults":countOfAdults,
					"countOfChild":countOfChild,
					"countOfRooms":countOfRooms
				},
				
				success : function(response) {
					if(response.message =='available'){
						if(val=='search'){
						hideSearchModal();
						showAvail();
						}else if(val=='checkAvail'){
							showAvailability()
						}else if(val=='overView'){
							saveBookingDetails()
						}
						
					}else{						
						$('#myModal2').modal('show');
						sessionStorage.clear();
					}
					
				},
				error : function(res) {
					
					$('#myModalError').modal('show');

				}

			});
			return false;
		}
	