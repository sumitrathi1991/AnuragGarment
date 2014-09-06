package com.anand.home


import com.anand.auth.User;
import com.anand.item.Item
import grails.plugin.springsecurity.SpringSecurityUtils;
class HomeController {
	def springSecurityService,UserService
	String userFullName = "Anonymous"
    def index() {
		List itemList = Item.list().take(10)
		 if(springSecurityService.currentUser)
		 userFullName = springSecurityService.currentUser.userFullName
		 log.debug"itemList--"+itemList
		 [itemList : itemList,userFullName:userFullName]

	
		
    }	
	def loginView(){
		
	}
	
	def productDetail(){
		 if(springSecurityService.currentUser)
		 userFullName = springSecurityService.currentUser.userFullName
		log.debug"in productDetail = "+params.productId
		Item item =Item.get(params.productId)
		[productId:params.productId,item : item,userFullName:userFullName]
	}
	
	def showProducts(){
		 if(springSecurityService.currentUser)
		 userFullName = springSecurityService.currentUser.userFullName
		log.debug"in showProducts == "+params
		List items = []
		if(params.containsKey("itemBrand"))
		items = Item.findAllByItemBrand(params.itemBrand)
		if(params.containsKey('itemFor'))
		items = Item.findAllByItemFor(params.itemFor)
		List sizeList = Item.findAll()?.itemSize?.label.unique()
		List colorList = Item.findAll()?.itemColor?.label.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		log.debug"name "+userFullName
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList, brand:params.itemBrand,userFullName:userFullName]
	}
	
	def filterData(){
		log.debug"in filterData=="+params
		List items = Item.list()
		List filterItem = []
		if(params.containsKey('brand'))
		items = Item.findAllByItemBrand(params.brand)
		if(params.containsKey('price')){
		items = items.each {item ->
			item.itemSize.each{ itemSize -> 
				if(itemSize.itemPrice <= (params.price as float))
					filterItem.add(item)
			}
			}
		items = filterItem
		}
		if(params.containsKey('color')){
		items = items.each{ item ->
			item.itemColor.each {
				if(it.label == params.color)
				filterItem.add(item)
		}
		}
		items = filterItem
		}
		if(params.containsKey('itemSize')){
			items = items.each{ item ->
				item.itemSize.each {
					if(it.label == params.size)
					filterItem.add(item)
			}
			}
			items = filterItem
		}
		render template:"itemGrid", model : [items : items]		
	}
}
