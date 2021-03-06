package com.anand.auth
import com.anand.address.Address

class User {

	transient springSecurityService

	String username, fullName, phoneNumber,token,mobilePhone
	String password,forgotPasswordToken
	
	boolean enabled = true
	boolean accountExpired,isTokenExpired,accountLocked,passwordExpired,isForgotPasswordTokenExpired
	Date lastLogin
	

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		phoneNumber nullable:true
		fullName nullable:true
		token nullable:true
		lastLogin nullable:true
		forgotPasswordToken nullable:true
		mobilePhone nullable:true
	}
	static hasMany = [address : Address]
	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
