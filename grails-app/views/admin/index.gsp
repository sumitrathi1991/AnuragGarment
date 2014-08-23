<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie lt-ie9 lt-ie8 lt-ie7 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"> <![endif]-->
<!--[if IE 7]>    <html class="ie lt-ie9 lt-ie8 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"> <![endif]-->
<!--[if IE 8]>    <html class="ie lt-ie9 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"> <![endif]-->
<!--[if gt IE 8]> <html class="animations ie gt-ie8 fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"> <![endif]-->
<!--[if !IE]><!--><html class="animations fluid top-full menuh-top sticky-top sidebar sidebar-full sidebar-collapsible sidebar-width-mini sidebar-hat"><!-- <![endif]-->
<head>
	<title>Login</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="/css/responsive.css" type="text/css" media="all">
	  <!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="/js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.validate.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'formValidation.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'formValidationAdmin.js')}"></script>
		
	<!-- Glyphicons Font Icons -->
	<link rel="stylesheet" href="/css/fonts/glyphicons/css/glyphicons.css" type="text/css" media="all">
	
	
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.min.css">
	<!--[if IE 7]><link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome-ie7.min.css"><![endif]-->
	
	<!-- Uniform Pretty Checkboxes -->
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
	
	
	<!-- PrettyPhoto -->
	<link rel="stylesheet" href="/css/highdpi.css" type="text/css" media="all">
   
    
  
    
  
	<link rel="stylesheet" href="css/style-default-menus-dark.css" type="text/css" media="all">
	<script type="text/javascript">
	$(document).ready(function() {
		registerValidationAdmin();
		});
	
	</script>
	
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
				
					<!-- Form -->
					<form id="loginAdminForm" method='POST'>
						<label>Email</label>
						<input type="text" class="input-block-level" id="j_username" name="j_username" placeholder="Your Username or Email address"/> 
						<label>Password <a class="password" href="">forgot it?</a></label>
						<input type="password" class="input-block-level margin-none" id="j_password" name="j_password" placeholder="Your Password" />
						<div class="separator bottom"></div> 
						<div class="row-fluid">
							<div class="span8">
								<div class="uniformjs"><label class="checkbox"><input type="checkbox" value="remember-me">Remember me</label></div>
							</div>
							<div class="span4 center">
								<button class="btn btn-block btn-inverse" type="submit" id="SubmitAdminLogin" name="SubmitAdminLogin">Sign in</button>
							</div>
						</div>
					</form>
					<!-- // Form END -->
							
				</div>
				<div class="widget-footer" id="updateadminmessage" style="display: none;">
					<p class="glyphicons restart"><i></i></p>
				</div>
			</div>
		<!-- // Box END --></div>
		
	</div>
	
</div>
</body>
</html>