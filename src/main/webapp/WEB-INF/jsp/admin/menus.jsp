<%@page import="java.util.ArrayList"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="menu-navbar">
	<nav class="navbar navbar-expand-lg navbar-dark">
		<button class="navbar-toggler menu-btn" type="button"
			data-toggle="collapse" data-target="#navbarNavDropdown"
			aria-controls="navbarNavDropdown" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars mr-1"></i> <span>MENU</span>
		</button>
		<!--//-->
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<%ArrayList<String> subMenuUserList = (ArrayList)session.getAttribute("subMenuUserList");%> 
        <%ArrayList<String> parentMenuUserList = (ArrayList)session.getAttribute("parentMenuUserList");%>
       <c:if test="${userRole ne 'SEOAdmin' && userRole ne 'Accounts'}">
        <div class="ml-2"> 
			<a href="${pageContext.servletContext.contextPath}/dashboard"
				class="text-white" >
							<b>Dashboard </b>
			</a>
		</div>
		</c:if>
			<ul class="navbar-nav nav-menu">
				<c:forEach items="${parentMenuUserList}" var="parentMenuUserList"
					varStatus="loopCounter">
					<li class="nav-item active dropdown menu-dd"><a
						class="nav-link dropdown-toggle "
						id="navbarScrollingDropdown" role="button" data-toggle="dropdown"
						aria-expanded="false">
							${parentMenuUserList.menuDisplayName} <span class="ml-2"></span>
					</a> <!--Menu DropDown-->
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<c:forEach items="${subMenuUserList}" var="subMenuUserList"
								varStatus="loopCounter">
								<c:if test="${parentMenuUserList.id eq subMenuUserList.menuParentId}">
									<li><a class="dropdown-item"
										href="${pageContext.servletContext.contextPath}/${subMenuUserList.menuName}">${subMenuUserList.menuDisplayName}</a></li>
								</c:if>
							</c:forEach>
						</ul> <!--//Menu DropDown--></li>
				</c:forEach>
			</ul>
		</div>
	</nav>
</div>
