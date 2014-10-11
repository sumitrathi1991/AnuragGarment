package com.anand.address

class Address {

	String fullName
	String address1
	String address2
	String phoneNumber
	String zipcode
	String city
	String state
	String addressTitle
	
	static constraints = {
		fullName nullable:false;
		address1 nullable:false;
		address2 nullable:true;
		zipcode nullable:false;
		city nullable:false;
		state nullable:false;
		addressTitle nullable:false;
	}
	
}
