package com.anand.item

import com.anand.image.Image
import com.sun.xml.internal.ws.org.objectweb.asm.Label;

class ItemController {
	static scaffold = true
	def grailsApplication
	def index(){}
	
	def saveItem(){
		log.debug"in saveItem"
		List itemType = ["sports","running","football","cricket","formal","casual","snicker","loafers","slipper","boots"]
		for(int i = 1; i<itemType.size();i++){
			Image image = new Image(name: "product"+i+".jpg",imageUrl : grailsApplication.config.grails.anand.imageUrl+"product"+i+".jpg", imageSize: "1234", width:"50", height :"50")
			Item item = new Item(itemName: "women"+i,itemCode : "IT9",itemDescription: "black",itemBrand : "Sparx",itemFor: "kids",itemPrice: 20.00,discountRate:0.00,quantity:2,qtyOrdered:0,isItemDiscountable: false,itemSize : "8", itemColor : "brown",isNew :true,rating :4, itemType:itemType[i])
			item.addToImages(image)
			if(!item.save(flush : true)){
				item.errors.each {log.debug"error in saving item == "+it}
			}
		}
	}
	
	
		def createItem(){
			log.debug"in create item"
			List colors = ['red','blue','black','brown','grey','white','yellow','green','silver','Gold']
			List prices = [400.00,600.00,800.00, 1000.00, 1200.00, 1400.00,1600.00, 1800.00, 2000.00,2200.00]
			List sizes = ['1','2','3','4','5','6','7','8','9','10']
			List brands =  ['Reebok','Adidas','Jogger','Puma','Nike','Red Cheif','Lakhani','Relaxo','Action','Red Boot']
			List itemType = ["sports","running","football","cricket","formal","casual","snicker","loafers","slipper","boots"]
			for(int i = 1; i<itemType.size();i++){
				List uploadedImages = uploadImage()
				ItemColor itemColor = new ItemColor(label : colors[i])
				//itemColor.save(flush:true)
				itemColor.imageList = uploadedImages
				ItemSize itemSize = new ItemSize(label : sizes[i], itemPrice : prices[i], isDiscountable  :false, quantity: 20, isNew: true) 
				Item item = new Item(itemName: "Women"+i,itemCode : "Item"+i,itemDescription: "footwear",itemBrand : brands[i],itemFor: "women",itemType:itemType[i])
				item.addToItemSize(itemSize)
				item.addToItemColor(itemColor)
				if(!item.save(flush : true)){
					item.errors.each {log.debug"error in saving item == "+it}
				}
			}
		}
		
	List uploadImage(){
		List uploadedImages = []
		for(int i=1; i<10; i++){
			Image image = new Image(name: "product"+i+".jpeg",imageUrl : grailsApplication.config.grails.anand.imageUrl+"product"+i+".jpeg", imageSize: "1234", width:"50", height :"50").save()
			uploadedImages.add(image)
		}
		return uploadedImages
	}
		
	def updateItem(){
		
	}
	
	def deleteItem(){
		
	}
}
