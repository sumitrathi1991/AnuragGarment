package com.anand.home

import com.anand.item.Item

class HomeController {

    def index() {
		List itemList = Item.list()
		[itemList : itemList]
	}
	
	def _loginView(){
		render template:"/home/loginView.gsp"
	}
	
	def productDetail(){
		log.debug"in productDetail = "+params.productId
		Item item =Item.get(params.productId)
		log.debug"item :"+item
		[productId:params.productId,item : item]
	}
	
	def showProducts(){
		log.debug"in showProducts == "+params
		List items = []
		if(params.containsKey("itemBrand"))
		items = Item.findAllByItemBrand(params.itemBrand)
		if(params.containsKey('itemFor'))
		items = Item.findAllByItemFor(params.itemFor)
		List sizeList = Item.findAll()?.itemSize?.unique()
		List colorList = Item.findAll()?.itemColor?.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList, brand:params.itemBrand]
	}
	
}
