package com.anand.cart

import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONObject

import com.anand.item.Item

class CartController {

	def addToCart(){
		log.debug"in cart == "+params
		JSONObject addTocartResponse  = new JSONObject()
		Item item = Item.get(params.item)
		Cart cart
		if(item.getAvailableQuantity() >= (params.quantity as int)){
		def cartId = session.getAttribute("cartId")
		if(!cartId)
		cart = new Cart()
		else
		cart = Cart.get(cartId)
		CartLine cartLine = new CartLine(item:item,quantity:params.quantity,price:params.price)
		cart.addToCartLines(cartLine)
		if(!cart.save()){
		cart.errors.each {log.debug"error in adding item to cart == "+it}
			}
		}
		else{
		addTocartResponse.put("result", false)
		addTocartResponse.put("message", "The maximum quanity available is "+item.getAvailableQuantity()+".")
		render addTocartResponse as JSON 
		}
	}
	
}
