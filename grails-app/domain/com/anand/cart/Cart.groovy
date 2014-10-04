package com.anand.cart

import com.anand.address.Address

class Cart {

	Address shipToAddress
	Address billToAddress
	boolean isBillSameAsShip
	float shippingCharge = 0.00
	float cachedGrandTotal = 0.00
	
	static hasMany = [cartLines:CartLine]
	
    static constraints = {
		billToAddress nullable: true
		shipToAddress nullable : true
    }
	
	static mapping = {
		cartLines cascade : 'all'
	}
	
	BigDecimal getProductTotal(){
		BigDecimal total =0.00
		for(cartLine in this.cartLines)
		{
			total = total+(cartLine.price*cartLine.quantity) as BigDecimal
		}
		return total.setScale(2)
	}
	
	BigDecimal getGrandTotal(){
		BigDecimal grandTotal = 0.00
		if(!this.getProductTotal())
		grandTotal = 0.00
		else
		grandTotal = this.shippingCharge + this.getProductTotal()
		return grandTotal.setScale(2)
	}
}
