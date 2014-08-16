package com.anand.mail

import com.anand.auth.User;

import grails.gsp.PageRenderer
import grails.transaction.Transactional

@Transactional
class EmailSenderService {

	def emailService
	def grailsApplication
	PageRenderer groovyPageRenderer
	def serviceMethod() {
	
		}
	String userRegistrationEmail(User user){
		String to = user.username
		String subject = "New Account"
		HashMap model = new HashMap()
		model.user = user
		model.name = user.fullName
		def emailBody = renderTemplate('userRegisterVerification', model)
		String responseMessage = sendMail(to, subject, emailBody)
		return responseMessage
	}
	def testMail(){
		String to = "rathisumit1991@gmail.com"
		String subject = "New Account"
		HashMap model = new HashMap()
		model.user = "sumit"
		model.name = "rathi"
		model.token = "sumit rahti"
		def emailBody = renderTemplate('userRegisterVerification', model)
		String responseMessage = sendMail(to, subject, emailBody)
		log.debug"response "+responseMessage
		return responseMessage
	}
	String sendMail(String toUser, String mailSubject, def emailBody){
		log.debug"sending mail"
		try{
			emailService.sendMail {
				to toUser
				subject mailSubject
				text emailBody
			}
		}
		catch(Exception ex){
			log.debug"mail exception "+ex
			return "network-issue"
		}
		return "success"
	}
	private renderTemplate( template , model ){
		String server = grailsApplication.config.grails.serverURL
		model.server = server
		groovyPageRenderer.render( view : '/email/master' , model : [template : template  , model : model])
	}
    
}
