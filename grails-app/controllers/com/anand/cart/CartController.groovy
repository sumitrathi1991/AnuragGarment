package com.anand.cart

import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONArray;
import org.codehaus.groovy.grails.web.json.JSONObject

import com.anand.item.Item
import com.anand.item.ItemSize
import com.google.gson.JsonArray;

class CartController {
	def grailsApplication
	
	def addToCart(){
		log.debug"in cart == "+params
		JSONObject addTocartResponse  = new JSONObject()
		Item item = Item.get(params.item)
		ItemSize itemSize = item.itemSize.find{it.label == params.itemSize}
		log.debug"itemSize is =="+itemSize 
		Cart cart
		if(itemSize.getAvailableQuantity() >= (params.quantity as int)){
		def cartId = session.getAttribute("cartId")
		if(!cartId)
		cart = new Cart()
		else
		cart = Cart.get(cartId)
		CartLine cartLine = new CartLine(itemId:item.id,name:item.itemName,quantity:params.quantity,price:params.price, size:params.itemSize, color :  params.itemColor)
		cart.addToCartLines(cartLine)
		if(!cart.save()){
		cart.errors.each {log.debug"error in adding item to cart == "+it}
			}
		else{ 
			def cartData =  getCartData(cart)
			log.debug"cartData == "+cartData
			render cartData as JSON
		}
		}
		else{
		addTocartResponse.put("result", false)
		addTocartResponse.put("message", "The maximum quanity available is "+item.getAvailableQuantity()+".")
		render addTocartResponse as JSON 
		}
	}
	
	
	def getCartData(Cart cart){
		JSONArray jsonArray = new JSONArray()
			cart?.cartLines.each{ cartLine  ->
			JSONObject cartJson = new JSONObject()
			cartJson.put("image", getCartLineImage(cartLine.itemId))
			cartJson.put("name", cartLine.name)
			cartJson.put("size", cartLine.size)
			cartJson.put("color", cartLine.color)
			cartJson.put("quantity", cartLine.quantity)
			cartJson.put("price", cartLine.price)
			cartJson.put("salePrice", cartLine.salePrice)
			jsonArray.add(cartJson)
		}
		JSONObject cartResponse = new JSONObject()
		cartResponse.put("data", jsonArray)
		log.debug"cartResponse is == "+jsonArray
		return cartResponse as JSON
	}
	
	String getCartLineImage(String itemId){
		log.debug"in getCartLineImage"
		Item item = Item.get(itemId)
		String imageUrl = grailsApplication.config.imagePublicUrl+item.itemColor[0].imageList[0].name
		return imageUrl
	}
}
