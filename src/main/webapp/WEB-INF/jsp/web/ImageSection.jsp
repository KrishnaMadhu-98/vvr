<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%> <!-- image container -->
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