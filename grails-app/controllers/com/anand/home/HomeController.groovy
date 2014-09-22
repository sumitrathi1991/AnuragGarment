package com.anand.home


import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONObject

import com.anand.item.Item
class HomeController {
	def springSecurityService,UserService,grailsApplication
	String userFullName = "Anonymous"
	def index() {
		List newItemList = Item.findAllByItemType('new')
		List featuredItemList = Item.findAllByItemType('featured')
		String userFullName = UserService.loginUserName()
		
		[itemList : newItemList,featuredItems:featuredItemList,userFullName:userFullName]
	}
	
	def getCategoryProduct(){
	log.debug"in getCategoryProduct == "+params
	List itemList = Item.findAllByItemCategory(params.itemCategory)
	render template:"items", model:[itemList :itemList]
	}
	
	def loginView(){
	}

	def productDetail(){
		String userFullName = UserService.loginUserName()
		log.debug"in productDetail = "+params.productId
		Item item =Item.get(params.productId)
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
		List sizeList = Item.findAll()?.itemSize?.itemSizeValue.unique()
		List colorList = Item.findAll()?.itemSize?.itemColor?.itemColorValue.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		List typeList = Item.findAll()?.itemType?.unique()
		List itemForList = Item.findAll()?.itemFor?.unique()
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList, brand:params.itemBrand,userFullName:userFullName,typeList:typeList,itemForList : itemForList,itemType: '', itemType : '']
	}

	def filterData(){
		log.debug"in filterData=="+params
		List items = Item.list()
		List filterItem = []
		if(params.containsKey('brand'))
			items = Item.findAllByItemBrand(params.brand)
		if(params.containsKey('price')){
			items.each {item ->
				item.itemSize.each{ itemSize ->
					if(itemSize.itemPrice <= (params.price as float))
						filterItem.add(item)
				}
			}
			items = filterItem
			filterItem = []
		}
		if(params.containsKey('color')){
			items.each{ item ->
				item.itemColor.each {
					if(it.label == params.color)
						filterItem.add(item)
				}
			}
			items = filterItem
			filterItem = []
		}
		if(params.containsKey('itemSize')){
			items.each{ item ->
				item.itemSize.each {
					if(it.label == params.itemSize)
						filterItem.add(item)
				}
			}
			items = filterItem
			filterItem = []
		}
		if(params.containsKey('itemType')){
			items.each{ item ->
					if(item.itemType == params.itemType)
						filterItem.add(item)
			}
			items = filterItem
			filterItem = []
		}
		if(params.containsKey('itemFor')){
			items.each{ item ->
					if(item.itemFor == params.itemFor)
						filterItem.add(item)
			}
			items = filterItem
			filterItem = []
		}
		render template:"itemGrid", model : [items : items]
	}
	
	def showAddToCartPopup(){
		log.debug"in showAddToCartPopup"+params
		Item item = Item.get(params.itemId)
		List imageList = decodeImageUrl(item.itemSize[0].itemColor[0].imageList)
		JSONObject cartData = new JSONObject()
		cartData.put("name", item.itemName)
		cartData.put("brand", item.itemBrand)
		cartData.put("images",imageList)
		cartData.put("itemSize",item.itemSize[0].itemSizeValue)
		cartData.put("itemColor",item.itemSize[0].itemColor[0].itemColorValue)
		cartData.put("quantity",item.itemSize[0].quantity)
		cartData.put("price", item.itemPrice)
		cartData.put("description", item.itemDescription)
		render cartData as JSON
		//render template :"addToCartPopUp", model: [item : item, primaryColor : item.itemColor[0]]
	}
	
	
	def decodeImageUrl(def imageList){
		List images = []
		imageList.take(5).each { image ->
			def imageUrl = grailsApplication.config.imagePublicUrl+image.name
			images.add(imageUrl)
		}
		return images
	}
	
	def renderHeaderData(){
		log.debug"in renderHeaderData=="+params
		List items = Item.findAllByItemForAndItemType(params.itemFor,params.itemType)
		List sizeList = Item.findAll()?.itemSize?.label.unique()
		List colorList = Item.findAll()?.itemColor?.label.unique()
		List brandList =  Item.findAll()?.itemBrand?.unique()
		List typeList = Item.findAll()?.itemType?.unique()
		List itemForList = Item.findAll()?.itemFor?.unique()
		render view:"info", model:[items:items,sizeList:sizeList,colorList:colorList,brandList :brandList,itemType:params.itemType, itemFor : params.itemFor,typeList:typeList,itemForList:itemForList]
	}
}
