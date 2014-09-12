package com.anand.manage

import com.anand.auth.User;
import grails.plugin.springsecurity.annotation.Secured
import org.apache.commons.lang.RandomStringUtils
import grails.plugin.springsecurity.SpringSecurityUtils;

class RegisterController {

	def registerService,mailService,springSecurityService,emailSenderService
    def index() { }
	
	
	def registerUser = {registerCommand command ->
		log.debug"params "+params
		def errors = [];
		HashMap resultMap = new HashMap();
		if (command.hasErrors()){
			command.errors.allErrors.each{
				log.debug"error while saving user from command line == "+it
				errors.add(it);
			}
			resultMap.status = "error";
			resultMap.message = "This email id is already in use. Please use another email id and try again!";
			respond resultMap, [formats:['json', 'xml']];
			return
		}
		User user = registerService.registerUser(params);
		if(user){
			registerService.addUserRole(user);
			emailSenderService.userRegistrationEmail(user);
			resultMap.status = "success";
			resultMap.message = "Thanks for creating new account.Mail has been sent to you email address to verify your email address or you can login with your email and password!"
			log.debug" result "+resultMap
			respond resultMap, [formats:['json', 'xml']];
			return
		}else{
			resultMap.status = "error";
			resultMap.message = "There is some error to create a new user please try again!"
			log.debug" result "+resultMap
			respond resultMap, [formats:['json', 'xml']];
			return
		}
		
	}
	
	def authenticateUser(){
		log.debug"authenticate user "+params
		User user = User.findByToken(params.token)
		if(user){
			log.debug"user.isTokenExpired "+user.isTokenExpired
			log.debug"user "+user.fullName
			if(user.isTokenExpired){
				redirect(controller:"home", fragment: "token_invalid");
				return;
			}else{
				user.isTokenExpired = true
				user.save(flush:true)
				springSecurityService.reauthenticate user.username
				redirect(controller: "home")
				return;
			}
		}else{
			redirect(controller:"home", fragment: "token_invalid");
			return;
		}
	}
	def forgotPassword(){
	log.debug"params in forgot password "+params
		
			User user = User.findByUsername(params.email)
			log.debug"user : "+user
			HashMap res = new HashMap()
			if(user){
				generateForgotPasswordToken(user)
				//res.forgotPasswordToken = forgotPasswordToken
				res.result = "Please check your email."
			}
			else{
				res.result = "Please enter valid email id. This email id does not exit."
			}
			render res.result;
		
	}
	def generateForgotPasswordToken(User user){
		String forgotPasswordToken = RandomStringUtils.randomAlphanumeric(32)
		user.forgotPasswordToken = forgotPasswordToken
		user.isForgotPasswordTokenExpired = false
		log.debug "isForgotPasswordTokenExpired ddd"+user.isForgotPasswordTokenExpired
		user.save()
		if(!user.save(flush:true)){
			user.hasErrors.each { log.debug"error in saving user == "+it}
			return null
		}
		resetPasswordMail(user)
	}
	void resetPasswordMail(User user){
		log.debug "resetPasswordMail inside"
		String to = user.username
		String subject = "Reset your password on Volcare"
		String server = grailsApplication.config.grails.serverURL+"/password/reset/"
		log.debug "server inside"+server;
		def emailBody = "Hi "+user.fullName+" Here is your password reset link."+server+user.forgotPasswordToken;
		sendMail(to, subject, emailBody)
	}
	void sendMail(String toUser, String mailSubject, def emailBody){
		log.debug "sendMail inside"
		mailService.sendMail {
			to toUser
			subject mailSubject
			html emailBody
		}
	}
	
	def validateForgotToken(){
		log.debug"parmas forgot token"+params
		User user = User.findByForgotPasswordToken(params.token);
		if(user){
			if(user.isForgotPasswordTokenExpired){
				render(view: "tokenExpired");
			}else{
				redirect(controller:"home", fragment: "reset_password/"+params.token);
				return;
			}
		}
		render(view: "tokenExpired");
	}
	def resetPassword()
	{
		
		User user=User.findByForgotPasswordToken(params.id);
		if(user){
			if(user.isForgotPasswordTokenExpired)
			{
				return [token :null]
			}
			else
			{
				user.isForgotPasswordTokenExpired=true;
				if(!user.save(flush:true)){
				user.hasErrors.each { log.debug"error in saving user == "+it}
				}
				return [token :params.id]
			}
		}else{
			return [token:null]
		}
		
		
	}
	def changePassword()
	{
		log.debug "  "+params;
		User user=User.findByForgotPasswordToken(params.token);
		log.debug "  "+user;
		if(user)
		{
			if(params.password.equals(params.repassword))
			{
				
				user.password=params.password;
				user.save();
				render "Password has changed"
			}
			else
				 render "Passwords does not match"
		}
		else
		{
			render "Invalid User"
		}
		
	}
	
	def tokenExpired(){
		
	}
	
}

class registerCommand{
	String emailAddress,password,repassword;
	static constraints = {
		
		emailAddress nullable:false, blank:false, email:true,validator:{ val, obj ->
			if( User.findByUsername(val) ){
				return "com.ananad.api.UserCommand.username.validator"
			}
		}
		password nullable:false, blank:false, minSize:5, maxSize:35
		repassword nullable: false, blank:false, validator: { val, obj ->
			if( obj.password != val ){
				return "com.ananad.api.UserCommand.repassword.validator"
			}
		}
	}
}
