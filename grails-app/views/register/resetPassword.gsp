<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<link rel="shortcut icon" href="${resource(dir:'whiteListing',file:'favicon.ico')}" />
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.8.3.js')}"></script>
<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'media.css')}" />
</head>
<body>
<div id="formWrapper" class="login">
		<div class="full">
		<div class="full">
			<div class="full textCenter">
				<h1 class="loginHeader">Logo</h1>
			</div>
    		<div class="full posRelative">
    			<div class="cornerRadiusAll padLeft  padTopBottom formMain fl" id="loginMain">
    			<g:if test='${error}'>
						<div class='errorMessage cornerRadiusAll message posRelative'>${error}</div>
					</g:if>
					<g:form action='resetPassword' controller="register" name='resetPasswordForm' autocomplete='off'>
						<g:hiddenField name='t' value='${token}'/>
						<div class="full padTopBottom">
             				<label class="fl inputName labelWidth">Password :</label>
        					<input type="password" name='password'  class=" inputWidth316 field cornerRadiusAll fl" placeholder="password" bean="${command}"  value="${command?.password}"/>
                		</div>
                		<div class="full">
             				<label class="fl padTopBottom inputName labelWidth">Password (again) :</label>
             				<input type="password" name='password2'  class="inputWidth316 field cornerRadiusAll fl" placeholder="Password(again)" bean="${command}" value="${command?.password2}" />
                		</div>
						<div class="full padTopBottom">
							<input type="submit" value="Reset Password" class="SubmitButton buttonBg marRight textCenter cursor cornerRadiusAll fr" id='reset' form='resetPasswordForm' />
						</div>
					</g:form>
				</div>
    		</div>
		</div>
    </div>
</body>
</html>
