<!DOCTYPE html>
<html class="animations fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"><!-- <![endif]-->
<head>
	<title>Login</title>
	
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes"> 
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="/css/responsive.css" type="text/css" media="all">
	  <!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
	
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.validate.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'formValidation.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'formValidationAdmin.js')}"></script>
		
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
	
		<div class="wrapper">
		
			<h1 class="glyphicons lock">ANAND TRADING <i></i></h1>
		
			<!-- Box -->
			<div class="widget widget-heading-simple widget-body-gray">
				
				<div class="widget-body">
				<g:if test="${flash.message }">
				<div id="message" style="color: #e82a2a;">${flash.message}</div>
			</g:if>
					<!-- Form -->
					<form  action='${postUrl}' method='POST' id='loginForm' class='login-form' autocomplete='off'>
						<label>Email</label>
						<input type="text" class="input-block-level"  id="j_username" name="j_username" placeholder="Your Username or Email address" required/> 
						<label>Password <a class="password" href="javascript:void(0)" id="forget-password">forgot it?</a></label>
						<input type="password" class="input-block-level margin-none" id="j_password" name="j_password" placeholder="Your Password" required/>
						<div class="separator bottom"></div> 
						<div class="row-fluid">
							<div class="span8">
								<div class="uniformjs">
								<label class="checkbox">
								<input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember me
								</label></div>
							</div>
							<div class="span4 center">
								<button class="btn btn-block btn-inverse" type="submit" id="submitAdminLogin" name="submitAdminLogin">Sign in</button>
							</div>
						</div>
					</form>
					<!-- // Form END -->
							
				</div>
				<div class="widget-footer" id="updateadminmessage" style="display: none;">
					<p class="glyphicons restart"><i></i></p>
				</div>
				<g:formRemote name="subForm" url="[controller:'admin', action:'forgotPassword']" class="forget-form">
				<h3>Forget Password ?</h3>
				<p>Enter your e-mail address below to reset your password.</p>
				<div class="form-group">
					<div class="input-icon">
						<i class="fa fa-envelope"></i>
						<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" />
					</div>
				</div>
				<div class="form-actions">
					<button type="button" id="back-btn" class="btn"><i class="m-icon-swapleft"></i> Back</button>
					<button type="submit" class="btn blue pull-right">Submit <i class="m-icon-swapright m-icon-white"></i></button>
				</div>
			</g:formRemote>
			</div>
		<!-- // Box END --></div>
		
	</div>
	
</div>
</body>
</html>