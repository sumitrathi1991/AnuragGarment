package com.anand.manage

import com.anand.auth.Role;
import com.anand.auth.User;
import com.anand.auth.UserRole;
import com.anand.item.Item;

import grails.plugin.springsecurity.annotation.Secured

import org.apache.commons.lang.RandomStringUtils

import grails.plugin.springsecurity.SpringSecurityUtils;

class AdminController {
	static allowedMethods = [registerUser : "POST",uploadItem : "GET"]
	def registerService,mailService,springSecurityService,emailSenderService
	
	def emailService
	@Secured(['IS_AUTHENTICATED_REMEMBERED','ROLE_SUPER_ADMIN'])
    def index() { 
		User user = springSecurityService.currentUser
		Role role = Role.findByAuthority("ROLE_BUYER")
		def userList = UserRole.findAllByRole(role,,[sort:'id',order:'dec']).user
		def itemList = Item.findAll();
		[userFullName:user.fullName,userList:userList,itemList:itemList]
		
	}
	def login(){
		
	}
	def _upload_item(){
		log.debug"hello uploadd item 2"
		render view:'_upload_item'
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

	
}
