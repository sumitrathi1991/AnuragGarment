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
                                    <p>Please enter your your information to create an account.</p>
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
                                   
                                    <div class="submit">	
                                    	<button class="btn btn-default button button-medium exclusive" type="button" id="SubmitBtn" name="SubmitCreate">
                                            <span>
                                                <i class="fa fa-user fa-lg"></i>
                                                Create an account
                                            </span>
                                        </button>
                                        <span class="fa fa-spinner fa-spin fa-2x"></span>
                                    </div>
                                </div>
						</form>
					</div>
                    <div class="col-xs-12 col-sm-6">
                        <form action='${request.contextPath}/j_spring_security_check' method='POST'
			 						 id="loginForm" class="box" >
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
                                <p class="lost_password form-group"><a href="#" title="Recover your forgotten password" rel="nofollow">Forgot your password?</a></p>
                                <div class="submit">
                                    <input type="hidden" class="hidden" name="back" value="my-account">	
                                    <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
                                        <span>
                                            <i class="fa fa-lock fa-lg"></i>
                                            Sign in
                                        </span>
                                    </button>
                                    <span class="fa fa-spinner fa-spin fa-2x"></span>
                                </div>
                            </div>
                        </form>
                    </div>
					</div>
				</div><!-- #center_column -->
                
               
                
                
			</div><!-- .row -->
		</div><!-- #columns -->
	</div>
