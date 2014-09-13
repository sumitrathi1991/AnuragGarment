<!DOCTYPE html>
<html class="animations fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"><!-- <![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Password</title>

<!-- Bootstrap -->
	<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="/css/responsive.css" type="text/css" media="all">
	  <!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
	
	<!-- Glyphicons Font Icons -->
	<link rel="stylesheet" href="/css/fonts/glyphicons/css/glyphicons.css" type="text/css" media="all">
	
	
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
	<link rel="stylesheet" href="/css/fonts/font-awesome/css/font-awesome.min.css">
	<!--[if IE 7]><link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome-ie7.min.css"><![endif]-->
	
	<!-- Uniform Pretty Checkboxes -->
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
	
	
	<!-- PrettyPhoto -->
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
   
    <link rel="stylesheet" href="/css/style-default-menus-dark.css" type="text/css" media="all">
    
</head>
<body class="document-body login">
<!-- Wrapper -->
	<div id="login">
		<div class="container">
		
			<!-- Congratulation Message Box -->
			<div class="hero-unit well" id="CongratulationMsg" style="display:none">
				<h1 class="padding-none">Congratulations!</h1>
				<hr class="separator" />
				<!-- Row -->
				<div class="row-fluid">
				
					<!-- Column -->
					<div class="span6">
						<div class="center">
							<p>Hi there, Password successfully changed. Your new password has been set.</p>
						</div>
					</div>
					<!-- // Column END -->
					
					<!-- Column -->
					<div class="span6">
						<div class="center">
							<div class="row-fluid">
								<div class="span6">
									<a href="#" class="btn btn-icon-stacked btn-block btn-success glyphicons user_add"><i></i><span>Login now</span></a>
								</div>
								<div class="span6">
									<a href="#" class="btn btn-icon-stacked btn-block btn-danger glyphicons home"><i></i><span>Browse through our website</span></a>
								</div>
							</div>
						</div>
					</div>
					<!-- // Column END -->
					
				</div>
				<!-- // Row END -->
			</div>
			<!-- // Congratulation Message Box END -->
			
			<!-- Reset Password Box -->
			<div class="wrapper" id="ResetPassword">
				<h1 class="glyphicons lock">ANAND TRADING <i></i></h1>
		    		<!-- Box -->
		    		<div class="widget widget-heading-simple widget-body-gray">
						<div class="widget-body">
		    			<g:if test='${error}'>
								<div class='errorMessage cornerRadiusAll message posRelative'>${error}</div>
							</g:if>
							<g:form action='resetPassword' controller="register" name='resetPasswordForm' autocomplete='off'>
								<g:hiddenField name='t' value='${token}'/>
		             				<label>Password :</label>
		        					<input type="password" name='password'  class="input-block-level" placeholder="password" bean="${command}"  value="${command?.password}"/>
		             				<label>Password (again) :</label>
		             				<input type="password" name='password2'  class="input-block-level margin-none" placeholder="Password(again)" bean="${command}" value="${command?.password2}" />
		             				<div class="separator bottom"></div> 
									<div class="row-fluid">
										<div class="span6 center offset6">
											<%--<button type="submit" value="Reset Password" class="btn btn-block btn-inverse" id='reset' form='resetPasswordForm'>Reset Password</button>--%>
											<button type="button" class="btn btn-block btn-inverse" id='reset'>Reset Password</button>
										</div>
									</div>
							</g:form>
						</div>
						<div class="widget-footer">
							<p class="glyphicons restart"><i></i>Please enter your new password ...</p>
						</div>
		    		</div>
		    		<!-- // Box END -->
			</div>
			<!-- // Reset Password Box END -->
			
    	</div>
 	</div>
 <!-- Wrapper Ends -->

 <script>
	$("#reset").click(function(){
		$(this).parents("#ResetPassword").fadeOut(200);
		$("#CongratulationMsg").delay(300).fadeIn();
	});
</script>
</body>
</html>
