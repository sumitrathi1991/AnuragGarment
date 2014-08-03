package com.anand.cart

import com.anand.item.Item

class CartLine {

	Item item
	Integer quantity
	BigDecimal price
	BigDecimal salePrice
	
    static constraints = {
		item unique:true
		item nullable : true
		salePrice nullable : true
		price nullable : true
    }
}
