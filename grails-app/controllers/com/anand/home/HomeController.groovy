package com.anand.home


import com.anand.auth.User;
import com.anand.item.Item
import grails.plugin.springsecurity.SpringSecurityUtils;
class HomeController {
	def springSecurityService,UserService
	String userFullName = "Anonymous"
	def index() {
		List newItemList = Item.findAllByItemCategory('new')
		List featuredItemList = Item.findAllByItemCategory('featured')
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
		List sizeList = Item.findAll()?.itemSize?.label.unique()
		List colorList = Item.findAll()?.itemColor?.label.unique()
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
		render template :"addToCartPopUp", model: [item : item, primaryColor : item.itemColor[0]]
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
