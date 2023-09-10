<%@page import="com.framework.config.PropertyFileConfig"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/web/WebHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
 <header class="border-bottom">
        <div class="container">            
            <nav class="navbar navbar-expand-lg bg-transparent rounded" aria-label="Thirteenth navbar example">
                <div class="container-fluid py-2">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarsExample11" aria-controls="navbarsExample11" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse d-lg-flex" id="navbarsExample11">
                        <a class="navbar-brand col-lg-4 me-0" href="https://valleyviewretreat.in/newVersion">
                         <div class="col-md-4">
                            <img src="./images/vvrlogo.png" class="img-fluid border-0 rounded-start rounded-2" alt="">
                         </div>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </header>
<main class="container py-5">
        <div class="row g-5 py-5">
 <jsp:include page="/WEB-INF/jsp/web/PersonalDetailsSection.jsp" />
		<jsp:include page="/WEB-INF/jsp/web/PaymentDetailsSection.jsp" /> 
		<jsp:include page="/WEB-INF/jsp/web/CommonModalSection.jsp" />
		</div>
		</main>
<jsp:include page="/WEB-INF/jsp/web/WebFooter.jsp" />
