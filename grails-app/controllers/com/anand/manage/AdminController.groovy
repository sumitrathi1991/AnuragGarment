package com.anand.manage

import com.anand.auth.User;
import grails.plugin.springsecurity.annotation.Secured
import org.apache.commons.lang.RandomStringUtils
import grails.plugin.springsecurity.SpringSecurityUtils;

class AdminController {
	static allowedMethods = [registerUser : "POST",uploadItem : "GET"]
	def registerService,mailService,springSecurityService
	
	def emailService
	@Secured(['IS_AUTHENTICATED_REMEMBERED','ROLE_SUPER_ADMIN'])
    def index() { 
		User user = springSecurityService.currentUser
		[userFullName:user.fullName]
	}
	def login(){
		
	}
	def upload_item(){
		log.debug"hello uploadd item 2"
		render view:'upload_item'
	}
	def upload_item1(){
		log.debug"hello uploadd item"
		redirect(controller: "admin", action: "upload_item")
	}
	def registerUser = {registerCommand command ->
		log.debug"params "+params
		HashMap resultMap = new HashMap();
		if (command.hasErrors()){
			command.errors.allErrors.each{
				log.debug"error while saving careCenter via careCenterCommand == "+it
				errors.add(it);
			}
			resultMap.status = "failed";
			resultMap.message = errors;
			respond resultMap, [formats:['json', 'xml']];
			return;
		}
		User user = registerService.registerUser(params);
		if(user){
			registerService.addUserRole(user);
			emailSenderService.userRegistrationEmail(user);
			resultMap.status = "success";
			resultMap.message = "register successfully "
			log.debug" result "+resultMap
			respond resultMap, [formats:['json', 'xml']];
			return
		}else{
			resultMap.status = "error";
			resultMap.message = "register error "
			log.debug" result "+resultMap
			respond resultMap, [formats:['json', 'xml']];
			return 
		}
		
	}
	def testMail(){
		//emailSenderService.sendMail("rathisumit1991@gmail.com","sumit","hello");
		log.debug"send mail "
		try{
			mailService.sendMail {
				to "rathisumit1991@gmail.com"
				from "abc@gmail.com"
				subject "Hello John"
				body 'this is some text'
			}
		}catch(Exception ex){
			log.debug"exis "+ex
		}

	}

	
	def forgotPassword(){
		User user = User.findByUsername(params.email)
		log.debug"user : "+user
		HashMap res = new HashMap()
		
		if(user){
			generateForgotPasswordToken(user)
			//res.forgotPasswordToken = forgotPasswordToken
			res.result = "success"
		}
		else{
			res.result = "invalid"
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
		String server = grailsApplication.config.grails.serverURL+"/admin/resetAdminPassword/"
		log.debug "server inside"+server;
		def emailBody = "Hi User . Here is your password reset link."+server+user.forgotPasswordToken;
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
	
	/*def validateForgotToken(){
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
	}*/
	def resetAdminPassword()
	{
		
		User user=User.findByForgotPasswordToken(params.id);
		
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
				render "Password has changed"
				user.password=params.password;
				user.save();
			}
			else
				 render "Passwords does not match"
		}
		else
		{
			render "Invalid User"
		}
		
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
