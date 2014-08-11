package com.anand.address

class Address {

	String emailAddress
	String address
	String zipcode
	String city
	String state
	boolean isSameAddress
	
	static constraints = {
		emailAddress nullable:true;
		address nullable:true;
		zipcode nullable:true;
		city nullable:true;
		state nullable:true;
		
	}
	
}
