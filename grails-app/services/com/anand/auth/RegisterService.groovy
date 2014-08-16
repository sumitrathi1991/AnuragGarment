package com.anand.auth

import com.anand.address.Address;
import org.apache.commons.lang.RandomStringUtils
import grails.transaction.Transactional

@Transactional
class RegisterService {

    def serviceMethod() {

    }
	
	User registerUser(params){
		String token = RandomStringUtils.randomAlphanumeric(32)
		Address address = addUserAddress(params); 
		String fullName = params.firstName +" "+ params.lastName;
		User user = new User(username:params.emailAddress,password:params.password,fullName:fullName,phoneNumber:params.contact,address:address,token:token);
		if(!user.save(flush:true)){
			log.error user.errors
		}
		return user;
	}
	
	Address addUserAddress(params){
		Address address = new Address(emailAddress:params.emailAddress,address:params.address,city:params.city,state:params.state,zipcode:params.zipcode)
		if(!address.save(flush:true)){
			log.error address.errors
		}
		return address;
	}
	
	boolean addUserRole(User user){
		UserRole userRole = new UserRole(user:user,role:Role.findWhere(authority:'ROLE_BUYER'))
		if(!userRole.save(flush:true)){
			log.error userRole.errors
			return false
		}
		return true
	}
	
}
