package com.anand.cart

import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject

import com.anand.item.Item
import com.anand.item.ItemSize

class CartController {
	def grailsApplication
	
	def addToCart(){
		log.debug"in cart == "+params
		JSONObject addTocartResponse  = new JSONObject()
		Item item = Item.get(params.item)
		ItemSize itemSize = item.itemSize.find{it.itemSizeValue == params.itemSize}
		Cart cart
		if(itemSize.getAvailableQuantity() >= (params.quantity as int)){
		def cartId = session.getAttribute("cartId")
		if(!cartId){
		cart = new Cart()
		}
		else
		cart = Cart.get(cartId)
		CartLine cartLine = new CartLine(itemId:item.id,name:item.itemName,quantity:params.quantity,price:params.price, size:params.itemSize, color :  params.itemColor)
		cart.addToCartLines(cartLine)
		if(!cart.save(flush:true)){
		cart.errors.each {log.debug"error in adding item to cart == "+it}
			}
		else{
			session.setAttribute("cartId", cart.id)
			JSONArray cartData  =  getCartData(cart)
			render cartData as JSON
			return false
		}
		}
		else{
		addTocartResponse.put("result", false)
		addTocartResponse.put("message", "The maximum quanity available is "+item.getAvailableQuantity()+".")
		render addTocartResponse as JSON 
		}
	}
	
	
	JSONArray getCartData(Cart cart){
		JSONArray jsonArray = new JSONArray()
			cart?.cartLines.each{ cartLine  ->
			JSONObject cartJson = new JSONObject()
			cartJson.put("cartId", cart.id)
			cartJson.put("cartLineId", cartLine.id)
			cartJson.put("image", getCartLineImage(cartLine.itemId))
			cartJson.put("name", cartLine.name)
			cartJson.put("size", cartLine.size)
			cartJson.put("color", cartLine.color)
			cartJson.put("quantity", cartLine.quantity)
			cartJson.put("price", cartLine.price)
			cartJson.put("salePrice", cartLine.salePrice)
			cartJson.put("total", cartLine.price * cartLine.quantity as float)
			cartJson.put("grandTotal", cart.getGrandTotal())
			jsonArray.add(cartJson)
		}
		return jsonArray
	}
	
	String updateCart(){
		log.debug"in updateCart == "+params
		Cart cart = Cart.get(params.cart)
		JSONObject updateResponse = new JSONObject()
		CartLine cartLine = CartLine.get(params.cartLine)
		cart.removeFromCartLines(cartLine)
		cartLine.delete()
		if(!cart.save(flush:true)){
			cart.errors.each{log.debug"error in updating cart == "+it}
			updateResponse.put("result", 'error')
		}
		else{
			updateResponse.put("result", 'success')
			updateResponse.put("total", cart.getProductTotal())
		}
		render updateResponse as JSON
	}
	
	String getCartLineImage(String itemId){
		Item item = Item.get(itemId)
		String imageUrl = grailsApplication.config.imagePublicUrl+item.itemSize[0].itemColor[0].imageList[0].name
		return imageUrl
	}
}
