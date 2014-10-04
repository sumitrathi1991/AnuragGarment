package com.anand.address

class Address {

	String firstName
	String lastName
	String emailAddress
	String address1
	String address2
	String phoneNumber
	String zipcode
	String city
	String state
	String addressTitle
	
	static constraints = {
		firstName nullable:false;
		lastName nullable:false;
		address1 nullable:false;
		emailAddress nullable:false;
		address2 nullable:true;
		zipcode nullable:false;
		city nullable:false;
		state nullable:false;
		addressTitle nullable:false;
	}
	
}
