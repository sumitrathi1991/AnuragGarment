package com.anand.auth

import grails.transaction.Transactional
import grails.plugin.springsecurity.SpringSecurityUtils;

@Transactional
class UserService {
	def springSecurityService
    def serviceMethod() {

    }
	String loginUserName(){
		String userFullName = "";
		User user = springSecurityService.currentUser
		if(user){
			userFullName = user.fullName
		}
		
		return userFullName
	}
}
