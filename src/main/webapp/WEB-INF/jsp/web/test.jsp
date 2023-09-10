
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>VVR</title>

<link href="/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/moment.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/css/daterangepicker.css" />
<link href="/css/splide.min.css" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;500&display=swap"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body><header class="border-bottom">
	<div class="container">
		<div class="navDiv">
			<nav class="navbar navbar-expand-lg bg-transparent rounded"
				aria-label="Thirteenth navbar example">
				<div class="container-fluid py-0">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarsExample11"
						aria-controls="navbarsExample11" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse d-lg-flex"
						id="navbarsExample11">
						<a class="navbar-brand col-lg-3 me-0" href="#">
							<div class="col-md-5">
								<img src="./images/vvrlogo.png"
									class="img-fluid border-0 rounded-start rounded-2" alt="">
							</div>
						</a>
						<ul class="navbar-nav col-lg-6 justify-content-lg-center"
							onclick="showSearchModal()">
							<div class="header-search border rounded-5 p-1 shadow-sm col-8">
								<div class="input-group">
									<input type="text" disabled
										class="form-control border-0 bg-transparent cursor-point"
										placeholder="Start your search"
										aria-label="Recipient's username"
										aria-describedby="button-addon2">
									<button class="btn btn-outline-light theme-bg-color rounded-5"
										type="button" id="button-addon2">
										<i class="bi bi-search"></i>
									</button>
								</div>
							</div>
						</ul>



						<div class="d-lg-flex col-lg-3 justify-content-lg-end">
							<button
								class="btn btn-primary bg-transparent border-0 p-2 text-dark ms-2">vvr
								your home</button>
							<button class="btn btn-primary bg-transparent border-0 p-2 mx-2">
								<i class="bi text-secondary bi-globe-americas"></i>
							</button>
							<div class="popup-menu d-flex border rounded-5">
								<button class="bg-transparent border-0">
									<span class="h4"><i class="bi bi-list 2x"></i></span> <span
										class="h4"><i
										class="bi bi-person-circle text-secondary fa-2x"></i></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<div class="search-modal d-none">
			<nav class="navbar navbar-expand-lg bg-transparent rounded "
				aria-label="Thirteenth navbar example">
				<div class="container-fluid py-2">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarsExample11"
						aria-controls="navbarsExample11" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse d-lg-flex"
						id="navbarsExample11">
						<a class="navbar-brand col-lg-3 me-0" href="#">
							<div class="col-md-4">
								<img src="./images/vvrlogo.png"
									class="img-fluid border-0 rounded-start rounded-2" alt="">
							</div>
						</a>

						<ul class="nav justify-content-center col-lg-6 ">
							<li class="nav-item"><a
								class="nav-link active-navbar text-dark" aria-current="page"
								href="#">Stays</a></li>
								 <li class="nav-item">
                  <a class="nav-link text-dark" href="#">Experience</a>
                </li>

						</ul>

						<div class="d-lg-flex col-lg-3 justify-content-lg-end">
							<button
								class="btn btn-primary bg-transparent border-0 p-2 text-dark ms-2">vvr
								your home</button>
							<button class="btn btn-primary bg-transparent border-0 p-2 mx-2">
								<i class="bi text-secondary bi-globe-americas"></i>
							</button>
							<div class="popup-menu d-flex border rounded-5">
								<button class="bg-transparent border-0">
									<span class="h4"><i class="bi bi-list 2x"></i></span> <span
										class="h4"><i
										class="bi bi-person-circle text-secondary fa-2x"></i></span>
								</button>
							</div>
						</div>
					</div>
				</div>

			</nav>
			<div
				class="container container-reduce border rounded-pill bg-quick-navbar my-2">

				<ul class="nav nav-pills nav-justified">
					<li
						class="nav-item  nav-item-hovered-quick-panel active-panel rounded-pill shadow-lg"
						style="margin-left: -12px;">
						<button class="nav-link" aria-current="page">
							<div class="panel-one d-flex flex-column p-2 align-items-start">
								<p class="mb-0 text-dark fw-bold">
									<small>Where</small>
								</p>
								<p class="mb-0 text-dark fw-2">Kodaikanal</p>

							</div>
						</button>
					</li>
					<li class="nav-item">
						<button class="nav-link" onclick=" hidepopover()" id="daterange1" >
							<div
								class="panel-two border-end d-flex flex-column p-2 align-items-start">
								<p class="mb-0 text-dark fw-bold">
									<small>Check-in</small>
								</p>
								<p class="mb-0 text-secondary checkinDate" class="checkinDate"
									id="checkinDate">
									<small>Add dates</small>
								</p>
							</div>
						</button>
					</li>
					<li class="nav-item">
						<button class="nav-link" onclick=" hidepopover()"  id="daterange2">
							<div
								class="panel-three border-end d-flex flex-column p-2 align-items-start">
								<p class="mb-0 text-dark fw-bold">
									<small>Check out</small>
								</p>
								<p class="mb-0 text-secondary checkoutDate" id="checkoutDate">
									<small>Add dates</small>
								</p>
							</div>
						</button>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle  d-flex flex-row p-2 align-items-center"
						>
							<div
								class="dropdown-toggle  panel-four-row d-flex justify-content-between align-items-center flex-column p-2"
								data-bs-toggle="dropdown"  role="button"
						aria-expanded="false" onclick="openGuest()">
								<p class="mb-0 text-dark fw-bold">
									<small>Who</small>
								</p>
								<p class="mb-0 text-secondary roomAndPerson">
									<small>Add guests</small>
								</p>
							</div>

							<div
								class="panel-four-row d-flex flex-row border-0 align-items-center justify-content-end border"
								style="margin-right: -7px;"
								onclick="return showAvail();hideSearchModal();updateRoomAndGuestInfo()">
								<span class="DateError"></span>
								<button
									class="btn p-3 ms-4 text-white rounded-pill fw-bold btn-linear"
									style="letter-spacing: .2rem">
									<i class="bi bi-search me-2" ></i>Avail
								</button>
								<input id="checkin" class="checkin" type="hidden"> <input
									id="checkout" class="checkout" type="hidden">
							</div>
					</a> <input type="hidden" name="isGuestPanel" id="isGuestPanel"
						value="false" />
						<ul
							class="dropdown-menu guestItem mt-2 shadow-lg p-4 rounded-5 border-0"
							style="width: 24rem;">



							<div class="d-flex justify-content-between border-bottom">
								<div class="model-category-left ">
									<div class="d-flex flex-column">
										<p class="fw-bold mb-0">Rooms</p>
										<p></p>
									</div>

								</div>

								<div
									class="model-guest-right d-flex flex-row align-items-center ">
									<button class="mx-1 bg-transparent border-0"
										onclick="addRoomCount('minus')">
										<i class="bi bi-dash-circle "></i>
									</button>
									<p class="mx-1 my-0" id="countOfRooms">1</p>
									<button class="mx-1 bg-transparent border-0"
										onclick="addRoomCount('plus')">
										<i class="bi bi-plus-circle"></i>
									</button>
								</div>
							</div>
							<div class="d-flex justify-content-between border-bottom pt-2">
								<div class="model-category-left">
									<div class="d-flex flex-column">
										<p class="fw-bold mb-0">Adults</p>
										<p>Ages above 18</p>
									</div>
								</div>
								<div
									class="model-guest-right d-flex flex-row align-items-center">
									<button class="mx-1 bg-transparent border-0"
										onclick="addAdultsCount('minus')">
										<i class="bi bi-dash-circle "></i>
									</button>
									<p class="mx-1 my-0" id="countOfAdults">1</p>
									<button class="mx-1 bg-transparent border-0"
										onclick="addAdultsCount('plus')">
										<i class="bi bi-plus-circle"></i>
									</button>
								</div>
							</div>

							<div class="d-flex justify-content-between border-bottom pt-2">
								<div class="model-category-left">
									<div class="d-flex flex-column">
										<p class="fw-bold mb-0">Child</p>
										<p>Under 18</p>
									</div>
								</div>
								<div
									class="model-guest-right d-flex flex-row align-items-center">
									<button class="mx-1 bg-transparent border-0"
										onclick="addChildCount('minus')">
										<i class="bi bi-dash-circle "></i>
									</button>
									<p class="mx-1 my-0" id="countOfChild">0</p>
									<button class="mx-1 bg-transparent border-0"
										onclick="addChildCount('plus')">
										<i class="bi bi-plus-circle"></i>
									</button>
								</div>
							</div>

							<button type="button"
								class="btn btn-outline-primary float-end mb-2 mr-2 pt-2 "
								onclick="updateRoomAndGuestInfo()">Apply</button>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

</header>
 <div class="container container-sm">
	<main>
		<div class="pt-4">
        <h1 class="h3 fw-1"><strong>Valley View Retreat in Kodaikanal</strong></h1>
        <div class="d-flex justify-content-between">
          <div class="d-flex justify-content-start">
            <p class="rate-head me-2"><i class="bi bi-star-fill me-2"></i>4.75 <u class="f-600"></u></p>
            <p class="place-head mx-2 f-600"><u>Kodaikanal, Tamilnadu, India</u></p>
          </div>
          <div class="d-flex">
            <p class="rate-head me-2"><i class="bi bi-arrow-bar-up me-2"></i>Share</p>
            <p class="host-add-head mx-2"><i class="bi bi-heart me-2"></i>Save</p>
          </div>
        </div>

      </div><!-- image container -->
      <div class="image-container rounded pt-2 pb-5">
        <div class="d-flex gap-2">
          <div class="image-large-viewer-left">
            <img src="./images/img/IMG_5624.jpg" alt="large-image" data-bs-toggle="modal"
              data-bs-target="#fullScreenViewer" aria-hidden="true" class="fristImager rounded-start-4" />
          </div>
		    <div class="image-large-viewer-left">
            <img src="./images/img/IMG_5607.jpg" alt="large-image" data-bs-toggle="modal"
              data-bs-target="#fullScreenViewer" aria-hidden="true" class="fristImager rounded-start-1 rounded-end-4" />
          </div>
         
          
        </div>
        <button class="btn border-dark position-relative ms-auto float-end bg-white me-3" style="margin-top: -3rem;" data-bs-toggle="modal"
        data-bs-target="#fullScreenViewer" type="button" ><i class="bi bi-grid-3x3-gap mx-2"></i> Show all photos</button>
      
      </div> 

 
	<div class="row g-5">
        <div class="col-md-7 col-lg-8">
          Review
          <div class="mb-2 flex-item">
            <div class="d-flex justify-content-between mb-3">
              <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                <div class="d-flex flex-row">
                  <div class="pt-2">
                    <h1 class="h3">Entire villa hosted by Balakrishnan</h1>
                    <div class="d-flex justify-content-start">
                      <p class="rate-head me-1">12 guests</p>
                      <p class="host-add-head mx-1"> 4 bedrooms</p>
                      <p class="place-head mx-1">4 beds</p>
                      <p class="place-head mx-1">4 bathrooms</p>
                    </div>
                  </div>
<!--                   <img src="./images/person.webp" alt="" width="100%" srcset="">
 -->                </div>
               
              </div>
              <span class="text-muted fs-sm">Jan 17, 2021</span>
            </div>
          </div>
          <hr>






          <div class="d-flex flex-column flex-md-row gap-4 align-items-center justify-content-start">
            <div>
              <a href="#" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
                <i class="bi bi-box2-fill"></i>
                <div class="d-flex gap-2 w-100 justify-content-between">
                  <div>
                    <h6 class="mb-0">Dedicated workspace</h6>
                    <p class="mb-0 mt-1 opacity-75">A common area with wifi that’s well suited for working.

</p>
                  </div>
                </div>
              </a>
              <a href="#" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
                <i class="bi bi-box2-fill"></i>
                <div class="d-flex gap-2 w-100 justify-content-between">
                  <div>
                    <h6 class="mb-0">Self check-in
</h6>
                    <p class="mb-0 mt-1 opacity-75">Check yourself in with the lockbox.</p>
                  </div>
                </div>
              </a>
              <a href="#" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
                <i class="bi bi-box2-fill"></i>
                <div class="d-flex gap-2 w-100 justify-content-between">
                  <div>
                    <h6 class="mb-0"> Campfire  .</h6>
			 <p class="mb-0 mt-1 opacity-75">Enjoy Time For Yourself.....</p>

                  </div>
                </div>
              </a>
            </div>
          </div>




          <hr>

        

          <p class="pt-2">Relax in this cozy and welcoming 3-bedroom villa that looks out over a misty valley. It has balconies with a breathtaking view of the mountains valley, and it's all yours. From the comfort of the first-floor living area, you can access the villa's private garden, filled with exotic kodaikanal flowers. Inhale the fresh air of the mountains and let it revive you. This 'Homestay' is Certified by Tamilnadu Tourism Dept.</p>
          <hr>

             Where you'll sleep
             <div class="py-3">
          <div class="d-flex flex-row justify-content-between">
            <h1 class="h4 fw-bold">Where you'll sleep</h1>
            <div class="d-flex justify-content-between align-items-center splide__arrows">
              <p class="fw-6 mx-1">1/2</p>
              <p class="fs-4"><i class="bi bi-arrow-left-circle mx-1"></i></p>
              <p class="fs-4"><i class="bi bi-arrow-right-circle mx-1"></i></p>
            </div>
          </div>
          <section class="splide" aria-label="Splide Basic HTML Example">
            <div class="splide__track">
              <ul class="splide__list">
                <li class="splide__slide p-0">
                  <div class="card rounded-2 border-0" style="width: 20rem;">
                    <img src="./images/IMG_5635.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Bedroom 1</h5>
                      <p class="card-text h6">1 queen bed.</p>
                    </div>
                  </div>
                </li>
                <li class="splide__slide">
                  <div class="card border-0" style="width: 20rem;">
                    <img src="./images/IMG_5643.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Hall</h5>
                      <p class="card-text h6">1 queen sofa.</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </section>
              </div>

           



            <hr>

          <div class="row">
            <div class="col-sm-6 col-lg-6 mb-4">
              <h5 class="mb-4">What is the Place of offer</h5>
              <ul class="nav flex-column text-primary-hover">
                <li class="nav-item"><a class="nav-link pt-0 text-dark" href="#"><i
                      class="bi bi-house-heart-fill me-2"></i>Dining Hall</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i
                      class="bi bi-person-workspace me-2"></i>Dedicated workspace</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i class="bi bi-check2-all me-2"></i>Pets
                    allowed</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i
                      class="bi bi-egg-fried me-2"></i><del>Carbon monoxide alarm</del></a></li>
              </ul>
            </div>
            <div class="col-sm-6 col-lg-6 mb-4">
              <h5 class="mb-4 text-white">Get Regular Updates</h5>
              <ul class="nav flex-column text-primary-hover">
                <li class="nav-item"><a class="nav-link pt-0 text-dark" href="#"><i
                      class="bi bi-wifi me-2"></i>Campfire</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i class="bi bi-car-front me-2"></i>Free
                    parking on premises</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i class="bi bi-tv me-2"></i>HDTV</a>
                </li>
                <li class="nav-item"><a class="nav-link text-dark" href="#"><i class="bi bi-camera-video me-2"></i>Security
                    cameras on property</a></li>

              </ul>
            </div>
          </div>

          <hr>



           Where you'll sleep
          <div class="py-3">
           <h1 class="h4 fw-bold">Accessibility features</h1>
           <div class="d-flex flex-row justify-content-between">
           <h1 class="h6 text-secondary fw-light">This info was provided by the Host and reviewed by VVR.</h1>

            <div class="d-flex justify-content-between align-items-center splide__arrows">
              <p class="fw-6 mx-1">1/2</p>
              <p class="fs-4"><i class="bi bi-arrow-left-circle mx-1"></i></p>
              <p class="fs-4"><i class="bi bi-arrow-right-circle mx-1"></i></p>
            </div>
          </div>
          <section class="splide accessibility-features" aria-label="Splide Basic HTML Example">
            <div class="splide__track">
              <ul class="splide__list">
                <li class="splide__slide p-0">
                  <div class="card rounded-2 border-0" style="width: 20rem;">
                    <img src="./images/IMG_5636.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Bedroom 1</h5>
                      <p class="card-text h6">Step-free access.</p>
                    </div>
                  </div>
                </li>
                <li class="splide__slide">
                  <div class="card border-0" style="width: 20rem;">
                    <img src="./images/IMG_5628.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Living Room 1</h5>
                      <p class="card-text h6">Step-free access.</p>
                    </div>
                  </div>
                </li>
                <li class="splide__slide">
                  <div class="card border-0" style="width: 20rem;">
                    <img src="./images/IMG_5629.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Living Room 2</h5>
                      <p class="card-text h6">Step-free access.</p>
                    </div>
                  </div>
                </li>
                <li class="splide__slide">
                  <div class="card border-0" style="width: 20rem;">
                    <img src="./images/IMG_5692.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Dining</h5>
                      <p class="card-text h6">Step-free access.</p>
                    </div>
                  </div>
                </li>
				 <li class="splide__slide">
                  <div class="card border-0" style="width: 20rem;">
                    <img src="./images/img/IMG_5559.jpg" class="img-thumbnail rounded-4 border-0" alt="">
                    <div class="card-body p-0 mt-2">
                      <h5 class="card-title h6 fw-bold">Campfire</h5>
                      <p class="card-text h6">Step-free access.</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <button class="btn btn-outline-dark fw-bold px-3 py-3 mt-4 rounded-3" type="button" data-bs-toggle="modal" data-bs-target="#accessibilityFeaturesFullScreenModal"> Show all 3 features </button>
          </section>

            
        </div>


<hr>

          // calender

          <div class="pt-2">
            <h1 class="h3">Select check-in date</h1>
            <p class="rate-head me-1">Add your travel dates for exact pricing</p>
            <div class="d-flex justify-content-start">
              <div id='calendar' class="w-100"></div>
              
     <div id="datepicker" class="w-100">
</div>End demo

       
    <input id="daterangepicker1" type="hidden" class="daterangepicker1">
    <div id="daterangepicker1-container" class="embedded-daterangepicker w-100"></div>
  
            </div>
          </div>

          <hr>



        </div>





        <div class="col-md-5 col-lg-4 order-md-last ">

          <div class="position-sticky" style="top: 2rem;">
            <div class="border rounded p-4 shadow-lg">
              <h5 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-dark my-auto">₹2500 night</span>
                <span class="mt-2">
                  <p class="h6"><i class="bi bi-star-fill me-2"></i>4.2  </p>
                </span>
              </h5>
              init state
              <ul class="list-group mb-3">
                <div class="d-flex flex-row daterange2" id="check-availablity-date">
                  <div class="flex-item cursor-point">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                    <button class="nav-link " onclick=" hidepopover()" >                
                <div>  <h6 class="my-0" style="font-size: 12px;"><small>CHECK-IN</small></h6>
                        <span class="checkinDate" id="checkinDateVal"><small class="text-body-secondary">Add Date</small></span>
                      </div>
              </button>
                      
                    </li>
                  </div>

                  <div class="flex-item cursor-point">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                    <button class="nav-link " onclick=" hidepopover()" >  
                      <div>
                        <h6 class="my-0" style="font-size: 12px;"><small>CHECK-OUT</small></h6>
                        <span class="checkoutDate" id="checkoutDateVal"><small class="text-body-secondary">Add Date</small></span>
                      </div>
                      </button>
                    </li>
                  </div>
                </div>
                <li class="list-group-item d-flex justify-content-between lh-sm cursor-point" >
                  <div onclick="openGuest1()">
                    <h6 class="my-0" style="font-size: 12px;">GUESTS</h6>
                    <small class="text-body-secondary roomAndPerson">Add guest</small>
                  </div>
                  <span class="text-body-secondary"><i class="bi bi-chevron-down"></i></span>
                  <input type="hidden" name="isGuestPanel1" id="isGuestPanel1" value="false" />
              <ul class="dropdown-menu guestItem1 mt-5 shadow-lg p-4 rounded-5 border-0 " style="width: 24rem;">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Separated link</a></li>
                    

                     <div class="d-flex justify-content-between border-bottom">
                        <div class="model-category-left ">
                            <div class="d-flex flex-column">
                                <p class="fw-bold mb-0">Rooms</p>
                                <p></p>
                            </div>
                          
                        </div>
                       
                        <div class="model-guest-right d-flex flex-row align-items-center ">
                            <button class="mx-1 bg-transparent border-0" onclick="addRoomCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfRooms" >1</p>
                            <button class="mx-1 bg-transparent border-0" onclick="addRoomCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between border-bottom pt-2">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold mb-0">Adults</p>
                                <p>Ages above 18</p>
                            </div>
                        </div>
                        <div class="model-guest-right d-flex flex-row align-items-center">
                            <button class="mx-1 bg-transparent border-0"  onclick="addAdultsCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfAdults" >1</p>
                            <button class="mx-1 bg-transparent border-0"  onclick="addAdultsCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between border-bottom pt-2">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold mb-0">Child</p>
                                <p>Under 18</p>
                            </div>
                        </div>
                        <div class="model-guest-right d-flex flex-row align-items-center">
                            <button class="mx-1 bg-transparent border-0" onclick="addChildCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfChild" >0</p>
                            <button class="mx-1 bg-transparent border-0" onclick="addChildCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between pt-2">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold mb-0">Pets</p>
                                <p class="text-decoration-underline">Bringing a service animal?</p>
                            </div>
                        </div>
                    </div>
                    <button type="button"
										class="btn btn-outline-primary float-end mb-2 mr-2 pt-2 "
										onclick="updateRoomAndGuestInfo()">Apply</button>
              </ul>
                </li>


              </ul>
            <span class="DateError"></span>
              <button type="submit" class="btn btn-secondary w-100 p-2" id="showReserve"
                style="background: linear-gradient(to right,#E61E4D 0%,#E31C5F 50%,#D70466 100%); border: #D70466;" onclick="showAvailability()">
                <span id="submitLabelName">Check
                Availability </span></button>
                
                    <div class="d-flex flex-column justify-content-center pt-4 gap-3 showPayAmount d-none">
                            <h3 class="h6 f px-5 pt-0 pb-2">You won't be charged yet</h3>
                            <div class="d-flex flex-column w-100 align-content-start">
                                <div class="list-group">
                                    <a class="list-group-item border-0 list-group-item-action d-flex gap-3 py-0">
                                        <div class="d-flex w-100 justify-content-between">
                                            <div class="">
                                                <p>₹2500 x 1 night</p>
                                            </div>
                                        </div>
                                        <p >₹<span class="payAmount">0</span></p>
                                    </a>
                                   
                                    

                                    <a class="list-group-item border-0 list-group-item-action d-flex gap-3 py-3">
                                        <div class="d-flex w-100 justify-content-between">
                                            <div class="">
                                                <h5 class="h6 fw-bold">Total <u>(INR)</u></h5>
                                            </div>
                                        </div>
                                        <h5 class="h6 fw-bold">₹<span class="payAmount">0</span></h5>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
            <script>
            
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
        	    	var amount = getBusinessDatesCount(start, end);

        			$('.checkinDate').html(start.format('DD MMM YYYY'));
        			$('.checkoutDate').html(end.format('DD MMM YYYY'));

        			getBusinessDatesCount(start, end)
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
        			document.getElementById('submitLabelName').innerHTML = "Reserve";
        			$('.showPayAmount').addClass("d-block");
        			$('.showPayAmount').removeClass("d-none");
        	    	  });
        	      
        	      // prevent hide after range selection
        	      picker.data('daterangepicker').hide = function () {};
        	      // show picker on load
        	      picker.data('daterangepicker').show();

        	    	 

        	});</script>Post content
     
 Post content
<section class="mb-4 pb-1 pt-4">
        <div class="row">
          <div class="col-md-12 mb-md-0 mb-2">
          
            <div class="mb-2">
              <h3 class="h5 fw-bold">Where you’ll be </h3>              
            </div>
            <div class="d-flex flex-wrap pb-2 pt-3">
<iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=kodaikanal&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
  <br>
  <h5 class="h6 fw-bold pt-3">Kodaikanal, Tamil Nadu, India</h5>
  <p>
  Valley view Retreat Villa situated on high hill that slope down into the villages of Vilpatti, that offers breathtaking views of spectacular surroundings. Valley view Retreat is laced with natural beauty,misty weather, pollution free environment.allowing you to converse with nature daily. the peaks in and around Valley view Retreat are always surrounded by thick layers of mist.</p>
            <a class="h6" data-bs-toggle="modal" data-bs-target="#mapFullScreenModal">show more <i class="bi bi-chevron-right"></i></a>
            </div>
            </div>
            </div>
            </section>
          <section class="pb-1">
       
  </footer>

Accessibility Features FullScreen Modal
<div class="modal fade" id="accessibilityFeaturesFullScreenModal" tabindex="-1" aria-labelledby="accessibilityFeaturesFullScreenModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="accessibilityFeaturesFullScreenModalLabel" data-bs-dismiss="modal" aria-label="Close"> <p class="host-add-head mx-2"><i class="bi bi-chevron-left"></i></p></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body container">
        <div class="d-flex flex-column">
          <div class="d-flex flex-column">
            <h3>Accessibility features</h3>
            <h6 class="text-secondary fw-light">This info was provided by the Host and reviewed by vvr.</h6>
          </div>
        <hr>
        <div class="d-flex flex-row gap-3 py-4 justify-content-between">
          <div class="d-flex flex-column w-50">
              <h6>Bedroom</h6>
              <h5 class="fw-bold">Step-free access</h5>
              <h6 class="text-dark fw-light">The room is on the ground floor or is accessible by a lift or ramp. The path from inside the guest entrance to the room has no stairs, steps, or thresholds higher than 2 inches (5 centimetres).
              </h6>
          </div>
          <div class="left-area-acc-modal flex-grow-1">
            <img src="./images/main-big-shower.webp" class="img-fluid rounded-3" alt="">
          </div>
        </div>
        <hr>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


Map FullScreen Modal
<div class="modal fade" id="mapFullScreenModal" tabindex="-1" aria-labelledby="mapFullScreenModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content ">

      <div class="modal-body container">
                <h1 class="modal-title fs-5" id="mapFullScreenModalLabel" data-bs-dismiss="modal" aria-label="Close"> <i class="bi bi-chevron-left"></i></h1>
              <div class="d-flex flex-column">          
        <div class="d-flex flex-row gap-3 py-4 justify-content-between">
        <div class="d-flex flex-column w-50">
              <h3>Where you’ll be</h3>
              <h5 class="h6 fw-bold pt-3 pb-2">Kodaikanal, Tamil Nadu, India</h5>
               <p class="text-dark">Valley view Retreat Villa situated on high hill that slope down into the villages of Vilpatti, that offers breathtaking views of spectacular surroundings. Valley view Retreat is laced with natural beauty,misty weather, pollution free environment.allowing you to converse with nature daily. the peaks in and around Valley view Retreat are always surrounded by thick layers of mist.              </p>
          <h5 class="h6 fw-bold pt-3 pb-2">Getting around</h5>
               <p class="text-dark">We have covered parking facility for guest saloon car. if possible we propose guest to try and do reverse parking so it'll be easy to take the car out. Also Just outside the villa gate, parking is available on the road all the way down the block. The property is on a street that doesn't have a thoroughfare therefore near zero noise from the ambience.
 </p>
  <p class="text-dark">This property is situated in a gated community, which guest will need to walk 1 km to the near by stores or take a Local Bus / CAB to the main kodaikanal town. Basic groceries and other essentials items can be purchased from vilpatti and Attuvampatti villages which is within a one-kilometer radius.</p>
       
          </div>
         
          <div class="left-area-acc-modal flex-grow-1">
            <img src="./images/main-big-shower.webp" class="img-fluid rounded-3" alt="">
            <iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=kodaikanal&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            
          </div>
        </div>
        
      </div>
      </div>
     
    </div>
  </div>
</div>


 Date Modal
    <div class="modal fade" id="dateModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-0">
                        <input type="text" name="datetimes" id="demo" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
<div class="modal" id="myModal1">
  <div class="modal-dialog modal-lg ">
    <div class=" modal-confirm modal-md">
            <div class="modal-content">
                <div class="modal-body text-center">
                    
                    <h4 class="text-success">congratulations!</h4>

                    <p>Your Booking Has Been Confirmed</p>
                </div>
                <div class="modal-footer justify-content-center">
                    <div class="m-1">
                        <button type="button" data-dismiss="modal " class="btn btn-success mr-2"
                            > Pay</button>
                    </div>
                    <div class="m-1">
                        <button type="button" class="btn btn-success mr-2" onclick="return redirectPage()"
                            data-bs-dismiss="modal"> Ok</button>
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>

<div class="modal" id="myModal2">
  <div class="modal-dialog modal-lg ">
    <div class=" modal-confirm modal-md">
            <div class="modal-content">
                <div class="modal-body text-center">

                    <p>Sorry,No Available Rooms for selected dates..</p>
                </div>
                <div class="modal-footer justify-content-center">
                    
                    <div class="m-1">
                        <button type="button" class="btn btn-danger mr-2"
                            data-bs-dismiss="modal"> Ok</button>
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>
<div class="modal" id="myModalError">
  <div class="modal-dialog modal-lg ">
    <div class=" modal-confirm modal-md">
            <div class="modal-content">
                <div class="modal-body text-center">

                    <p>Oops..there is some problem please contact admin </p>
                </div>
                <div class="modal-footer justify-content-center">
                    
                    <div class="m-1">
                        <button type="button" class="btn btn-danger mr-2" onclick="return redirectPage()"
                            data-bs-dismiss="modal"> Ok</button>
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>
Guest Model
    <div class="modal fade" id="guestModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content justify-content-start" style="width: 85%;">
                <div class="modal-header border-0">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Guests</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body border-0">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Guests</h1>
                    <p><small>This place has a maximum of 2 guests, not including infants. Pets aren't allowed.</small>
                    </p>
<div class="d-flex justify-content-between">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold">Rooms</p>
                                <p></p>
                            </div>
                        </div>
                        <div class="model-guest-right d-flex flex-row align-items-center">
                            <button class="mx-1 bg-transparent border-0" onclick="addRoomCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfRooms" id="countOfRooms">1</p>
                            <button class="mx-1 bg-transparent border-0" onclick="addRoomCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold">Adults</p>
                                <p>Age 18+</p>
                            </div>
                        </div>
                        <div class="model-guest-right d-flex flex-row align-items-center">
                            <button class="mx-1 bg-transparent border-0" onclick="addAdultsCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfAdults" id="countOfAdults">1</p>
                            <button class="mx-1 bg-transparent border-0" onclick="addAdultsCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="model-category-left">
                            <div class="d-flex flex-column">
                                <p class="fw-bold">Children</p>
                                <p>Under 18</p>
                            </div>
                        </div>
                        <div class="model-guest-right d-flex flex-row align-items-center">
                            <button class="mx-1 bg-transparent border-0" onclick="addChildCount('minus')"><i class="bi bi-dash-circle "></i></button>
                            <p class="mx-1 my-0 countOfChild" id="countOfChild">0</p>
                            <button class="mx-1 bg-transparent border-0" onclick="addChildCount('plus')"><i class="bi bi-plus-circle"></i></button>
                        </div>
                    </div>

                   
                </div>
                <div class="modal-footer justify-content-between border-0">
                    <button type="button"
                        class="btn btn-secondary bg-transparent text-dark border-0 text-decoration-underline modalClose"
                        data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary theme-bg-color border-0" onclick="updateRoomAndGuestInfo()">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    
    Modal
<div class="modal fade p-2" id="showAllReviews" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-fullscreen-lg-down">
    <div class="modal-content p-3">
      <div class="modal-header border-0">
        
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="d-flex justify-content-between">
          <div class="review-modal-left w-75">

            <h1 class="h4 w-100"><i class="bi bi-star-fill me-2"></i>4.86 · 21 reviews</h1>
           <div class="inside-modal-review">
            <div class="mb-2 flex-item">
              <div class="d-flex justify-content-between mb-3">
                <div class="d-flex flex-column w-100 justify-content-between pe-2">




                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Cleanliness</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>


                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Accuracy</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>
                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Communication</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>
                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Location</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>
                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Check-in</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>
                      <div class="mb-3 flex-item">
                        <div class="d-flex w-100 justify-content-between align-items-center pe-2">
                          <p class="mb-auto">Value</p>
                          <div class="progress me-4" role="progressbar" aria-label="Example 1px high" aria-valuenow="75"
                            aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100px;">
                            <div class="progress-bar bg-black" style="width: 75%"></div>
                          </div>
                        </div>
                      </div>
                </div>
              </div>
            </div>
           </div>
          </div>

          <div class="right-review-modal">
          <div class="input-group mb-3 w-100 border rounded-5 border-secondary bg-secondary-subtle">
            <span class="input-group-text bg-transparent border-0 rounded-4" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control bg-transparent rounded-4 border-0" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
          </div>


            inside action

            full action
            <div class="d-flex flex-column h-100 overflow-auto">
               Review
             <div class="py-2 flex-item">
              <div class="d-flex justify-content-between mb-3">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1"
                    src="https://a0.muscache.com/defaults/user_pic-225x225.png?v=3&im_w=240" width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-base mb-0">Vigna</h6>
                    <span class="star-rating">December 2022</span>
                  </div>
                </div>
                <span class="text-muted fs-sm">Jan 17, 2021</span>
              </div>
              <p>First of all a very good host ,very responsive. Very good property. Neatly maintained by the care
                taker there, she keeps the place very tidy, washes all the vessels instantly..</p>
            </div>

              Review
              <div class="py-2 ms-5 flex-item">
                <div class="d-flex justify-content-between mb-3">
                  <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1"
                      src="https://a0.muscache.com/defaults/user_pic-225x225.png?v=3&im_w=240" width="48" alt="Avatar">
                    <div class="ps-2">
                      <h6 class="fs-base mb-0">Vigna</h6>
                      <span class="star-rating">December 2022</span>
                    </div>
                  </div>
                  <span class="text-muted fs-sm">Jan 17, 2021</span>
                </div>
                <p>First of all a very good host ,very responsive. Very good property. Neatly maintained by the care
                  taker there, she keeps the place very tidy, washes all the vessels instantly..</p>

                  
              </div>


            </div>
            



        </div>

           
          
        </div>

      </div>
    </div>
  </div>
</div>

   Show all Ambenities Modal


<div class="modal fade" id="allAmbenities" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header border-0">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
main content
        <h1 class="h5 fw-bold mb-3">What this place offers</h1>
        <p class="my-4 fw-bold">Scenic views</p>
        <div class="d-flex flex-row border-bottom my-3">
          <p><i class="bi bi-flower2 me-3"></i></p>
          <p>Garden view</p>
        </div>
        <div class="d-flex flex-row border-bottom my-3">
          <p><i class="bi bi-flower2 me-3"></i></p>
          <p>Mountain view</p>
        </div>
        <div class="d-flex flex-row border-bottom my-3">
          <p><i class="bi bi-flower2 me-3"></i></p>
          <p>Valley view</p>
        </div>
//  main content

        





      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
 Modal
  <div class="modal fade" id="fullScreenViewer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
      <div class="modal-content">
        <div class="modal-header border-0">
          <div class="d-flex justify-content-between w-100">
            <p class="host-add-head mx-2" aria-label="Close" data-bs-dismiss="modal"><i class="bi bi-chevron-left"></i>
            </p>
            <div class="d-flex">
              <p class="rate-head me-2 small text-decoration-underline fw-bold"><i
                  class="bi bi-arrow-bar-up me-2"></i>Share</p>
              <p class="host-add-head mx-2 small text-decoration-underline fw-bold"><i class="bi bi-heart me-2"></i>Save
              </p>
            </div>
          </div>

        </div>
        <div class="modal-body">
          <div class="image-viewer">
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5522.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5524.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5528.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5543.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5544.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5545.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5558.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5559.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5561.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5563.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5623.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5624.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5625.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5627.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5629.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5631.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5633.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5634.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5636.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5676.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5678.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5637.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5638.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5640.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5644.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5647.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5650.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5652.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5654.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5659.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5666.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5673.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5674.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5675.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5564.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5568.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5572.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5573.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5574.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5575.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5577.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5579.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5580.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5581.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5583.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5584.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5586.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5588.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5592.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5594.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5601.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5602.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5601.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5602.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5601.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5602.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5604.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5605.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5606.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5607.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5608.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5609.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5611.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5615.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5616.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5617.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5632.jpg" />
			  <img class="image-item-image-viewer"
              src="./images/img/IMG_5653.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5646.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5630.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5582.jpg" />
            <img class="image-item-image-viewer"
              src="./images/img/IMG_5552.jpg" />
			   <img class="image-item-image-viewer"
              src="./images/img/IMG_5560.jpg" />
          </div>
        </div>

      </div>
    </div>
  </div>



</main>
</div>
 -->
<hr>
<footer class="gap-3 footer mt-auto py-3 bg-body-tertiary">
        <div class="container">
         <div class="row">
    <div class="col-sm-12 col-lg-6 col-md-6"><span class="text-dark ">© 2023 vvr, Inc. &middot; Privacy &middot; Terms &middot; Sitemap &middot;
                Company details</span></div>
    <div class="col-lg-6 col-md-6 col-sm-12 footer_sm"><span class="text-dark float-md-end float-sm-start "><i class="bi bi-globe"></i> &middot; <a class="text-dark">English (IN)</a> &middot; ₹ INR&middot; <i class="bi bi-facebook"></i> &middot; <i class="bi bi-instagram"></i> &middot;
                <i class="bi bi-twitter"></i></span></div>
        </div>
        </div>
    </footer>
    
 <div class="stickyFooter pb-5">
     <div class="row ">
     <div class="col-sm-12">
      <!-- <div class="col-sm-6">
    <div class="d-flex flex-column mx-3 align-content-center " id="">
                    <p class="fw-bold mb-0 small">9000 <span class="fw-light">night</span></p>
                    <p class="small"> <i class="bi bi-star-fill"></i> 4.86 . <span class="text-secondary"> 21 reviews</span></p>
                  </div>
                  </div> -->
                   <div class="col-sm-6">
                    <button type="submit" class="btn btn-secondary w-100 p-2" id="showReserve" style="background: linear-gradient(to right,#E61E4D 0%,#E31C5F 50%,#D70466 100%); border: #D70466;" >
               Check  Availability </button>
                     </div>
                     </div>
                     </div>
                     </div>
  <script src="
/js/splide.min.js
"></script>



    <script
	src="/js/popper.min.js"></script>


 
	<script src="/js/jquery-1.11.0.min.js"></script>
	
 <script src="/js/bootstrap.bundle.min.js"
    ></script>



<!--  <script type="text/javascript" src="/js/bootstrap-modal-popover.js"></script>
 -->
	<script type="text/javascript" src="/js/daterangepicker.min.js" defer></script>
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 --><script src="/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.nl.min.js"></script>
<link href="/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet"/>
	
 <script
	src="/js/common.js"></script> 
	
	
</body>
</html><!-- <script>
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
