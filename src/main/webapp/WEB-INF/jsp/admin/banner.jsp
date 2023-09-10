<div class="top-navbar">
	<nav class="navbar navbar-expand-lg">
		<a href="${pageContext.servletContext.contextPath}/dashboard"
			class="navbar-brand"> </a> 
		<div class="navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">			

				<!-- <li class="nav-item"><span><button
							class="btn btn-block btn-primary"
							onclick="return showPassword();">
							<i class="fa fa-key btn-icon"> Change Password</i>
						</button></span></li> -->
				<!-- <li class="nav-item"><a class="nav-link" href="#"
					data-toggle="modal" onclick="return showPassword();"> <span
						class="item_outer text-primary"> <i class="fas fa-key mr-1"></i>
							Change Password
					</span>
				</a></li> -->
				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="item_outer"> 
							<b>Welcome!</b> ${userName}
					</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.servletContext.contextPath}/logout"> <span
						class="item_outer"> <i class="fas fa-power-off mr-1"></i>
							Logout
					</span>
				</a></li>
			</ul>
		</div>
	</nav>
</div>

<jsp:include page="/WEB-INF/jsp/admin/footerjs.jsp"></jsp:include>
