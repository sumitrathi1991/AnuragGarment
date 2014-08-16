package com.anand.manage

import com.anand.auth.User;

class AdminController {
	static allowedMethods = [registerUser : "POST"]
	def registerService,emailSenderService
    def index() { 
		log.debug"hello admin"
	}
	def login(){
		
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
		emailSenderService.sendMail("sumitrathi44@yahoo.com","sumit","hello");
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
