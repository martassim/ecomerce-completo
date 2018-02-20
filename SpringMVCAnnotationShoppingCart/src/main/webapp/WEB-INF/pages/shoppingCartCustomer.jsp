<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Enter Customer Information</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/styles.css"> --%>
 
</head>
<body>
<jsp:include page="_header.jsp" />
<jsp:include page="_menu.jsp" />
 
<div class="page-title">Enter Customer Information</div>
 
 
  <div id="page-wrapper">
  				 <article id="main">
						<section class="wrapper style5">
							<div class="inner">
 
   <form:form method="POST" modelAttribute="customerForm"
       action="${pageContext.request.contextPath}/shoppingCartCustomer">
 
 
   
 
         <div class="row uniform">
		         
		         <div class="2u 2u$(xsmall)">						
						</div>
						<div class="2u 2u$(xsmall)">
               Name *
                </div>
                
              <div class="5u$ 5u$(xsmall)">
                <form:input path="name" />
                <form:errors path="name" class="error-message" /></div>
            
 
            <div class="2u 2u$(xsmall)">					
						</div>
						
		              	<div class="2u 2u$(xsmall)">
                Email *
                </div>
                
                <div class="5u$ 5u$(xsmall)">
                <form:input path="email" />
                <form:errors path="email" class="error-message" /></div>
            
 						<div class="2u 2u$(xsmall)">						
						</div>
		              	<div class="2u 2u$(xsmall)">
            
                Phone *</div>
                
                <div class="5u$ 5u$(xsmall)">
                <form:input path="phone" />
                <form:errors path="phone" class="error-message" /></div>
                
            			<div class="2u 2u$(xsmall)">
						</div>
		              	<div class="2u 2u$(xsmall)">
 
            
                Address *</div>
                <div class="5u$ 5u$(xsmall)">
                <form:input path="address" />
                <form:errors path="address" class="error-message" /></div>
            
 						<div class="2u 2u$(xsmall)">
												
						</div>
						
		              	<div class="2u 2u$(xsmall)">
            
                &nbsp;</div>
                <div class="5u$ 5u$(xsmall)">
                <input type="submit" value="Submit" class="special"/> <input type="reset"
                   value="Reset" /></div>
                   </div>
                  
                  	</form:form>
 				</div>
 				</section>
		</article>	
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