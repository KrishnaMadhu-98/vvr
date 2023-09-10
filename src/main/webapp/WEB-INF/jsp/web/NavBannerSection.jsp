<%@page import="com.framework.config.PropertyFileConfig"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/web/WebHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<header class="border-bottom">
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
									<input type="text" 
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
<div class="d-flex justify-content-end pt-3">
							<button type="button"
								class="btn btn-outline-primary float-end mb-2 mr-2 pt-2 "
								onclick="updateRoomAndGuestInfo()">Apply</button>
								</div>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

</header>

