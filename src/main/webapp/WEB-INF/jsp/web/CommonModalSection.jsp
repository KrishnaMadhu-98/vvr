<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--Accessibility Features FullScreen Modal -->
<div class="modal fade" id="accessibilityFeaturesFullScreenModal" tabindex="-1" aria-labelledby="accessibilityFeaturesFullScreenModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="accessibilityFeaturesFullScreenModalLabel" data-bs-dismiss="modal" aria-label="Close"> <p class="host-add-head mx-2"><i class="bi bi-chevron-left"></i></p></h1>
        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
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
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>


<!--Map FullScreen Modal -->
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
<!--             <img src="./images/main-big-shower.webp" class="img-fluid rounded-3" alt="">
 -->            <iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=kodaikanal&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            
          </div>
        </div>
        
      </div>
      </div>
     
    </div>
  </div>
</div>


 <!-- Date Modal -->
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
                    <!-- <div class="m-1">
                        <button type="button" data-dismiss="modal " class="btn btn-success mr-2"
                            > Pay</button>
                    </div> -->
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
<!-- Guest Model -->
    <div class="modal fade" id="guestModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content justify-content-start" style="width: 85%;">
                <div class="modal-header border-0">
                    <!-- <h1 class="modal-title fs-5" id="exampleModalLabel">Guests</h1> -->
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
    
    <!-- Modal -->
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


            <!-- inside action -->

            <!-- full action -->
            <div class="d-flex flex-column h-100 overflow-auto">
               <!-- Review-->
             <div class="py-2 flex-item">
              <div class="d-flex justify-content-between mb-3">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1"
                    src="https://a0.muscache.com/defaults/user_pic-225x225.png?v=3&im_w=240" width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-base mb-0">Vigna</h6>
                    <span class="star-rating">December 2022</span>
                  </div>
                </div>
                <!-- <span class="text-muted fs-sm">Jan 17, 2021</span> -->
              </div>
              <p>First of all a very good host ,very responsive. Very good property. Neatly maintained by the care
                taker there, she keeps the place very tidy, washes all the vessels instantly..</p>
            </div>

              <!-- Review-->
              <div class="py-2 ms-5 flex-item">
                <div class="d-flex justify-content-between mb-3">
                  <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1"
                      src="https://a0.muscache.com/defaults/user_pic-225x225.png?v=3&im_w=240" width="48" alt="Avatar">
                    <div class="ps-2">
                      <h6 class="fs-base mb-0">Vigna</h6>
                      <span class="star-rating">December 2022</span>
                    </div>
                  </div>
                  <!-- <span class="text-muted fs-sm">Jan 17, 2021</span> -->
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

   <!-- Show all Ambenities Modal -->


<div class="modal fade" id="allAmbenities" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header border-0">
        <!-- <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1> -->
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
<!-- main content -->
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
<!-- //  main content -->

        





      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>
