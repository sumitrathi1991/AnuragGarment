package com.anand.cart

import com.anand.item.Item

class CartLine {

	String itemId
	String name
	Integer quantity
	BigDecimal price
	BigDecimal salePrice
	String color
	String size
	
    static constraints = {
		itemId nullable : true
		color nullable : true
		size nullable : true
		salePrice nullable : true
		price nullable : true
    }
}
