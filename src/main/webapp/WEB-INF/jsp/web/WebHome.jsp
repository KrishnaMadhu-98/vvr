<%@page import="com.framework.config.PropertyFileConfig"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/web/NavBannerSection.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="container">
	<main>
		<jsp:include page="/WEB-INF/jsp/web/WebBanner.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/ImageSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/FeatureSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/ReviewSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/MapSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/SupportItemSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/CommonModalSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/ImageModalSection.jsp" />
	</main>
</div>

<jsp:include page="/WEB-INF/jsp/web/WebFooter.jsp" />
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
		
	    $('#datepicker').datepicker({
	    	inline: true,
	    	  language: "en",     	  
	    	  todayHighlight: true,
	    	  numberOfMonths: 2,
	    	  
	    	});
	    
	    var picker = $('#daterangepicker1').daterangepicker({
	        "parentEl": "#daterangepicker1-container",
	        "autoApply": true,
	        "startDate": minDate,
	  	    "endDate": maxDate,
	  	    
	      });
	      // range update listener
	      picker.on('apply.daterangepicker', function(ev, picker) {
	    	var start= picker.startDate;
	    	var end= picker.endDate;
		    	
		    $('.checkinDate').html(start.format('DD MMM YYYY'));
		    $('.checkoutDate').html(end.format('DD MMM YYYY'));	    	
		    	getBusinessDatesCount(start,end)
		    	 $('#checkin').val(start);
		    	 $('#checkout').val(end);
		    	 sessionStorage.setItem("checkin",start.format('MM/DD/YYYY')); 
		    	 sessionStorage.setItem("checkout",end.format('MM/DD/YYYY'));
		    	 sessionStorage.setItem("checkinVal",start.format('DD MMM YYYY')); 
		    	 sessionStorage.setItem("checkoutVal",end.format('DD MMM YYYY'));
			    	 updateRoomAndGuestInfo();
			    	 document.getElementById('submitLabelName').innerHTML="Reserve";
			    	 $('.showPayAmount').addClass("d-block");
			    	 $('.showPayAmount').removeClass("d-none");
	    	  
		  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");
		  $('button[name="daterange"]').daterangepicker({
			   "startDate": start,
			    "endDate": end,			    
			    "autoApply": true,
			    });

	    	  });
	      // prevent hide after range selection
	      picker.data('daterangepicker').hide = function () {};
	      // show picker on load
	      picker.data('daterangepicker').show();
	});

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
		    	//$('#checkinDate').html(start);
		    	// $('#checkoutDate').html(end);
		    $('.checkinDate').html(start.format('DD MMM YYYY'));
		    $('.checkoutDate').html(end.format('DD MMM YYYY'));
		    	/* document.getElementById('checkinDate').innerHTML=start.format('DD MMM YYYY');
		    	 document.getElementById('checkoutDate').innerHTML=end.format('DD MMM YYYY');
		    	 document.getElementById('checkinDateVal').innerHTML=start.format('DD MMM YYYY');
		    	 document.getElementById('checkoutDateVal').innerHTML=end.format('DD MMM YYYY');*/
		    	getBusinessDatesCount(start,end)
		    	 $('#checkin').val(start);
		    	 $('#checkout').val(end);
		    	 sessionStorage.setItem("checkin",start.format('MM/DD/YYYY')); 
		    	 sessionStorage.setItem("checkout",end.format('MM/DD/YYYY'));
		    	 sessionStorage.setItem("checkinVal",start.format('DD MMM YYYY')); 
		    	 sessionStorage.setItem("checkoutVal",end.format('DD MMM YYYY'));
			    	 updateRoomAndGuestInfo();
			    	 document.getElementById('submitLabelName').innerHTML="Reserve";
			    	 $('.showPayAmount').addClass("d-block");
			    	 $('.showPayAmount').removeClass("d-none");

		    	   /* var total_seconds = Math.abs(end - start) / 1000;  
		    	    var days_difference = Math.floor (total_seconds / (60 * 60 * 24));
		    	    $('#countOfDays').val(days_difference);
		    	    document.getElementById('countOfDays').innerHTML=days_difference;*/
		  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");
		  $('button[name="daterange"]').daterangepicker({
			   "startDate": start,
			    "endDate": end,
			    
			    "trigger": 'manual',
			    });
		  $('#daterangepicker1').daterangepicker({
		        "parentEl": "#daterangepicker1-container",
		        "autoApply": true,
		        "startDate": start,
		  	    "endDate": end
		      });
		  $('#daterangepicker1').data('daterangepicker').show();
		 
		  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");

		    });

	}	  );
	
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
		
	    $('#datepicker').datepicker({
	    	inline: true,
	    	  language: "en",     	  
	    	  todayHighlight: true,
	    	  numberOfMonths: 2,
	    	  
	    	});
	    
	    var picker = $('#daterangepicker1').daterangepicker({
	        "parentEl": "#daterangepicker1-container",
	        "autoApply": true,
	        "startDate": minDate,
	  	    "endDate": maxDate
	      });
	      // range update listener
	      picker.on('apply.daterangepicker', function(ev, picker) {
	    	var start= picker.startDate;
	    	var end= picker.endDate;
		    	
		    $('.checkinDate').html(start.format('DD MMM YYYY'));
		    $('.checkoutDate').html(end.format('DD MMM YYYY'));	    	
		    	getBusinessDatesCount(start,end)
		    	 $('#checkin').val(start);
		    	 $('#checkout').val(end);
		    	 sessionStorage.setItem("checkin",start.format('MM/DD/YYYY')); 
		    	 sessionStorage.setItem("checkout",end.format('MM/DD/YYYY'));
		    	 sessionStorage.setItem("checkinVal",start.format('DD MMM YYYY')); 
		    	 sessionStorage.setItem("checkoutVal",end.format('DD MMM YYYY'));
			    	 updateRoomAndGuestInfo();
			    	 document.getElementById('submitLabelName').innerHTML="Reserve";
			    	 $('.showPayAmount').addClass("d-block");
			    	 $('.showPayAmount').removeClass("d-none");
	    	  
		  console.log("New date range selected: ' + start.format('ddd DD MM YYYY') + ' to ' + end.format('ddd DD MM YYYY') + ' (predefined range: ' + label + ')");
		  $('button[name="daterange"]').daterangepicker({
			   "startDate": start,
			    "endDate": end,
			    
			    "trigger": 'manual',
			    });
	    	  });
	      // prevent hide after range selection
	      picker.data('daterangepicker').hide = function () {};
	      // show picker on load
	      picker.data('daterangepicker').show();
	});
	</script> -->
	  <script type="text/javascript">
//init daterangepicker 
 
document.addEventListener( 'DOMContentLoaded', function() {
    var splide = new Splide( '.splide', {
      type   : 'slide',
  perPage: 2,
  perMove: 1,
  gap:'1rem',
  rewind: true,
  rewindByDrag: false,
  padding: '1rem',
  arrows: true,
  lazyLoad: true,
    }
     );
    splide.mount();


    var splide = new Splide( '.accessibility-features', {
      type   : 'slide',
  perPage: 2,
  perMove: 1,
  gap:'1rem',
  rewind: true,
  rewindByDrag: false,
  padding: '1rem',
  arrows: true,
  lazyLoad: true,
    }
     );
    splide.mount();





  } );

  


    // window.onload = function () {
    //   document.getElementById("dateFilterCheckIn").click();
    // };


  /*   $(function () {

      $('input[name="dateFilterCheckIn"]').daterangepicker({
        opens: 'center',
        autoUpdateInput: false,
        locale: {
          cancelLabel: 'Clear'
        }
      });

      $('input[name="datefilter"]').on('apply.daterangepicker', function (ev, picker) {
        $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
      });

      $('input[name="datefilter"]').on('cancel.daterangepicker', function (ev, picker) {
        $(this).val('');
      });

    }); */




    const imgs = document.querySelectorAll(".image-viewer .image-item-image-viewer");

    scrolling();
    window.onscroll = scrolling;

    function scrolling() {
      const viewportHeight = window.innerHeight;
      imgs.forEach((img) => {
        if (img.getBoundingClientRect().top < viewportHeight) {
          img.style.animationPlayState = "running";
        }
      });
    }
  </script>
