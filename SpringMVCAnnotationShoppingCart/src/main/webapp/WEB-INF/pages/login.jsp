<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Login</title>
 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
 
</head>
<body>
 
 
   <jsp:include page="_header.jsp" />
   <jsp:include page="_menu.jsp" />
   Login (For Employee, Manager)
 
 
  
 
  
    <div id="page-wrapper">
   <article id="main">
						
						<section class="wrapper style5">
							<div class="inner">
 
       <br>
       <!-- /login?error=true -->
       <c:if test="${param.error == 'true'}">
           <div style="color: red; margin: 10px 0px;">
 
               Login Failed!!!<br /> Reason :
               ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
 
           </div>
       </c:if>
 
		       <form method="POST"
		           action="${pageContext.request.contextPath}/j_spring_security_check">
		           
		         <div class="row uniform">
		         
		         <div class="2u 2u$(xsmall)">
												
						</div>
						
						<div class="10u 10u$(xsmall)">
												
		         <h3>Enter username and password</h3>
		         	</div>
		         	
		           		<div class="2u 2u$(xsmall)">						
						</div>
						<div class="2u 2u$(xsmall)">
		                   User Name *
		                   </div>
		                   <div class="5u$ 5u$(xsmall)">
		                  <input type="text" name="userName" />
		              		 </div>
		              	
		           		<div class="2u 2u$(xsmall)">
												
						</div>
						
		              	<div class="2u 2u$(xsmall)">	 
		                   Password *
		                   </div>
		                    <div class="5u$ 5u$(xsmall)">
		                   <input type="password" name="password" />
		               
												
						</div>
						 <div class="2u 2u$(xsmall)">
												
						</div>
		                
		                <div class="8u 8u$(xsmall)">
		                   <input type="submit" value="Login" class="special"/>
		                   
		                
		                    <input type="reset"
		                       value="Reset" />
		                      
		                       
		         </div>
		              
		          
		       </form>
       
      				</div>
			</section>
		</article>	
			
 
       <span class="error-message">${error }</span>
 
 		
   </div>
 
   <jsp:include page="_footer.jsp" />
   <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js">type="text/javascript"><jsp:text> </jsp:text></script><![endif]-->
			<script src="${pageContext.request.contextPath}/assets/js/main.js">type="text/javascript"><jsp:text> </jsp:text></script>
 
</body>
</html>