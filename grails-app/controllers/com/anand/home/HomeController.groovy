package com.anand.home


import com.anand.auth.User;
import com.anand.item.Item
import grails.plugin.springsecurity.SpringSecurityUtils;
class HomeController {
	def springSecurityService,UserService
    def index() {
		List itemList = Item.list()
		 String userFullName = UserService.loginUserName()
		 [itemList : itemList,userFullName:userFullName]

	
		
    }	
	def loginView(){
		
	}
	
	def productDetail(){
		String userFullName = UserService.loginUserName()
		log.debug"in productDetail = "+params.productId
		Item item =Item.get(params.productId)
		log.debug"item :"+item
		log.debug"name "+userFullName
		[productId:params.productId,item : item,userFullName:userFullName]
	}
	
	def showProducts(){
		String userFullName = UserService.loginUserName()
		log.debug"in showProducts == "+params
		List items = []
		if(params.containsKey("itemBrand"))
		items = Item.findAllByItemBrand(params.itemBrand)
		if(params.containsKey('itemFor'))
		items = Item.findAllByItemFor(params.itemFor)
		List sizeList = Item.findAll()?.itemSize?.unique()
		List colorList = Item.findAll()?.itemColor?.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		log.debug"name "+userFullName
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList, brand:params.itemBrand,userFullName:userFullName]
	}
	
	def filterData(){
		log.debug"in filterData=="+params
		List items = Item.list()
		if(params.containsKey('brand'))
		items = Item.findAllByItemBrand(params.brand)
		if(params.containsKey('price'))
		items = items.findAll {it.itemPrice <= (params.price as float)}
		if(params.containsKey('color'))
		items = items.findAll {it.itemColor == params.color}
		if(params.containsKey('itemSize'))
		items = items.findAll {it.itemSize <= (params.itemSize)}
		render template:"itemGrid", model : [items : items]		
	}
}
