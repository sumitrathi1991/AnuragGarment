<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<%--<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" />
--%><script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.8.3.js')}"></script>
<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'media.css')}" />
</head>
<body>
<div id="formWrapper" class="forgetPassword" >
	<div class="full">
	<div class="full textCenter">
		<h1 class="loginHeader">forgotPassword</h1>
	</div>
    <div class="full posRelative">
       	<div class="cornerRadiusAll padLeft  padTopBottom formMain fl" id="forgotMain">
      	 	<g:if test='${emailSent}'>
				Please check your email or <g:link controller="login" action="auth" class="linkColor">Login Here</g:link>
			</g:if>
			<g:else>
				<g:form action='forgotPassword' controller="register" class="width90Per fl color" name="forgotPasswordForm" autocomplete='off' method="POST">
				<g:if test="${flash.error }">
									<div class="login_message">${flash.error }</div>
								</g:if>	
            		<label class="full inputName">Enter your Email</label>
             		<input type="text" name="username" id='username1' class="inputWidth field cornerRadiusAll fl" placeholder="Email"/>
        			<div class="full padTopBottom">
              			<input type="submit" class="SubmitButton buttonBg marRight textCenter cursor cornerRadiusAll fr" value="Recover password"/>
                	</div>
               	</g:form>
			</g:else>
        </div>
	</div>
</div>
</div>
</body>
</html>
