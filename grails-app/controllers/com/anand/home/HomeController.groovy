package com.anand.home

import com.anand.auth.User;
import com.anand.item.Item

class HomeController {
	def springSecurityService
    def index() {
		List itemList = Item.list()
		log.debug"itemList "+itemList
		User user = springSecurityService.currentUser 
		if(user){
			log.debug"user name "+user.fullName
			[itemList : itemList,userFullName:user.fullName]
		}else{
			[itemList : itemList]
		}
			
		
		
	}
	
	def _loginView(){
		
		render template:"/home/loginView.gsp"
	}
	
	def productView(){
		log.debug"in productView = "+params.productId
		Item item =Item.get(params.productId)
		log.debug"item :"+item
		[productId:params.productId,item : item]
	}
	
	def showMoreItems(){
		log.debug"in showMoreItems == "+params
		List items = Item.findAllByItemBrand(params.itemBrand)
		List sizeList = Item.findAll()?.itemSize?.unique()
		List colorList = Item.findAll()?.itemColor?.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList, brand:params.itemBrand]
	}
	
}
