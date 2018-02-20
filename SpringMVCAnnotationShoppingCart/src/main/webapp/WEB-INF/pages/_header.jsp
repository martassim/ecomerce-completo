<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   

 
<div class="header-container">
 
 
 
  


<!-- Header -->
					<header id="header" class="alt">
						<h1><a href="index.jsp">Viajes Festival</a></h1>
						<nav id="nav">
							<ul>
							<li>       <c:if test="${pageContext.request.userPrincipal.name != null}">
					        			
							   	      <li> <a href="${pageContext.request.contextPath}/accountInfo">
							                ${pageContext.request.userPrincipal.name} 
							              <li>   </a>
							         &nbsp;|&nbsp;
							          <li> <a href="${pageContext.request.contextPath}/logout">Logout</a>
							 
							        </c:if>
							        <c:if test="${pageContext.request.userPrincipal.name == null}">
							         <li>   <a href="${pageContext.request.contextPath}/login">Login</a>
							        </c:if>
							
								<li class="special">
								
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li>
  											 <a href="${pageContext.request.contextPath}/">Home</a>
											</li>
											<li>
											<a href="${pageContext.request.contextPath}/productList">
										      Product List
										   </a>
											</li>
											<li>
											 <a href="${pageContext.request.contextPath}/shoppingCart">
										      My Cart
										   </a>
											</li>
											<li>
											
										   <security:authorize  access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
										     <a href="${pageContext.request.contextPath}/orderList">
										         Order List
										     </a>  </security:authorize>
											</li>
											<li>
										<security:authorize  access="hasRole('ROLE_MANAGER')">
									         <a href="${pageContext.request.contextPath}/product">
									                        Create Product
									         </a>
									   </security:authorize>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
					
					 
 
</div>

  

