
<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.posthemes.com/pos_alexis/en/ -->
<html lang="en" class="">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Anand Trading</title>
		<meta name='layout' content='main' />
		
		<meta name="generator" content="PrestaShop">
		<meta name="robots" content="index,follow">
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0"> 
		<meta name="apple-mobile-web-app-capable" content="yes"> 
        
        </head>
	 <body id="index" class="index hide-left-column hide-right-column lang_en">
	 <div class="columns-container">
		<div id="columns" class="container">
											
            <!-- Breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="index.html" title="Return to Home">Home</a>
                <span class="navigation-pipe">&gt;</span>
				<span class="navigation_page">	Authentication</span>
            </div>
            <!-- /Breadcrumb -->
			<div class="row">
				<div id="center_column" class="center_column  col-sm-12">
					<h1 class="page-heading">Authentication</h1>
					<!---->
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<form id="registerForm" name="registerForm" onsubmit="return false" class="box">
								<h3 class="page-subheading">Create an account</h3>
                                <div class="form_content clearfix">
                                    <p class="page-submessage">Please enter your your information to create an account.</p>
                                    <div class="form-group">
                                        <label for="email_create">First Name</label>
                                        <input type="text" class="is_required validate account_input form-control" id="firstName" name="firstName" >
                                    </div>
                                   <div class="form-group">
                                        <label for="email_create">Last Name</label>
                                        <input type="text" class="is_required validate account_input form-control" id="lastName" name="lastName" >
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Email address</label>
                                        <input type="text" class="is_required validate account_input form-control"  id="emailAddress" name="emailAddress" >
                                    </div>
                                  
                                    <div class="form-group">
                                        <label for="email_create">Password</label>
                                        <input type="password" class="is_required validate account_input form-control" id="password" name="password">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Re password</label>
                                        <input type="password" class="is_required validate account_input form-control" id="repassword" name="repassword">
                                    </div>
                                   <div id="updatesignupmessage" class="element error" style="display: none;"></div>
                                    <div class="submit">	
                                    	<button class="btn btn-default button button-medium exclusive" type="button" id="SubmitBtn" name="SubmitCreate">
                                            <span>
                                                <i class="fa fa-user fa-lg"></i>
                                                Create an account
                                            </span>
                                        </button>
                                        <span id="signupSpinner" class="fa fa-spinner fa-spin fa-2x" style="display: none;"></span>
                                    </div>
                                </div>
						</form>
					</div>
                    <div class="col-xs-12 col-sm-6">
                    	<!--Login Box -->
                        <form id="login_form" class="box" >
                            <h3 class="page-subheading">Already registered?</h3>
                            <div class="form_content clearfix">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="j_username" name="j_username" >
                                </div>
                                <div class="form-group">
                                    <label for="passwd">Password</label>
                                    <span><input class="is_required validate account_input form-control" type="password"  id="j_password" name="j_password" ></span>
                                </div>
                                <p class="lost_password form-group"><span>Forgot your password?</span></p>
                                <div id="updateloginmessage" class="element error" style="display: none;"></div>
                                <div class="submit">
                                    <input type="hidden" class="hidden" name="back" value="my-account">	
                                    <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
                                        <span>
                                            <i class="fa fa-lock fa-lg"></i>
                                            Sign in
                                        </span>
                                    </button>
                                  
                                    <span id="loginSpinner" class="fa fa-spinner fa-spin fa-2x" style="display: none;"></span>
                                    
                                </div>
                            </div>
                        </form>
                        <!--Login Box Ends -->
                        
                        <!--Forgot Box -->
                        <g:formRemote url="[controller: 'register', action:'forgotPassword']" onLoading="showSpinner()" onComplete="hideSpinner()" class="box" name="forgotPasswordForm" id="forgotPasswordForm" autocomplete='off' method="POST" update="updateForgotPasswordMessage" style="display:none">
                         <h3 class="page-subheading">Forgot your password?</h3>
                            <p class="page-submessage">Please enter the email address you used to register. We'll then send you a new password. </p>
                            <div class="form_content clearfix">
                            <div id="updateForgotPasswordMessage" class="element error"></div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="forgotEmail" name="forgotEmail" required >
                                </div>
                                
                                <div class="submit">
                                    <input type="hidden" class="hidden" name="back" value="my-account">	
                                    <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
                                        <span>
                                            <i class="fa fa-lock fa-lg"></i>
                                            Retrieve Password
                                        </span>
                                    </button>
                                    
                                     <button type="button" id="Back-btn" name="SubmitLogin" class="button btn btn-default button-medium pull-right">
                                        <span>
                                            <i class="fa fa-chevron-left fa-lg"></i>
                                            Back
                                        </span>
                                    </button>
                                   <span id="forgotPasswordSpinner" class="fa fa-spinner fa-spin fa-2x" style="display: none;"></span>
                                </div>
                            </div>
                        </g:formRemote>
                        <!--Forgot Box Ends-->
                        
                    </div>
					</div>
				</div><!-- #center_column -->
                
			</div><!-- .row -->
		</div><!-- #columns -->
	</div>
	<script type="text/javascript">
	$(".lost_password").click(function(){
		$("#login_form").fadeOut(200);
		$("#forgotPasswordForm").delay(300).fadeIn();
	});
	$("#Back-btn").click(function(){
		$("#login_form").delay(300).fadeIn();
		$("#forgotPasswordForm").fadeOut(200);
	});
	registerValidation();
	var registerUrl = "${createLink(controller:'Register',action:'registerUser')}";
		
	</script>
</body>
</html>