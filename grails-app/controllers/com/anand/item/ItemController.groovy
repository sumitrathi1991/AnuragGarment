package com.anand.item

import org.codehaus.groovy.grails.web.json.JSONObject;

import com.anand.image.Image
import com.sun.xml.internal.ws.org.objectweb.asm.Label;

class ItemController {
	static scaffold = true
	def grailsApplication,itemService
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
		List colors = ['red','blue','black','brown','grey','white','yellow','green','silver','Gold','golden']
		List prices = [400.00,600.00,800.00, 1000.00, 1200.00, 1400.00,1600.00, 1800.00, 2000.00,2200.00,2400.00]
		List sizes = ['1','2','3','4','5','6','7','8','9','10','11']
		List itemType = ['','featured','bestSeller','new','featured','bestSeller','new','featured','bestSeller','new','featured']
		List brands =  ['Reebok','Adidas','Jogger','Puma','Nike','Red Cheif','Lakhani','Relaxo','Action','Red Boot',"GoldStar"]
		List category = ["Converse","Sports Shoes","Running Shoes","Heels","Wedges","Formal Shoes","Casual Shoes","Sneakers","Loafers","Sandals","Boots"]
		for(int i = 1; i<sizes.size();i++){
			List uploadedImages = uploadImage()
			ItemColor itemColor = new ItemColor(itemColorValue : colors[i])
			itemColor.imageList = uploadedImages
			ItemSize itemSize = new ItemSize(itemSizeValue : sizes[i],  quantity: 20, isNew: true) 
			if(!itemSize.save(flush : true)){
				itemSize.errors.each {log.debug"error in saving itemSize == "+it}
				}
			Item item = new Item(itemName: "men"+i,itemCode : "Item"+i,itemDescription: "footwear",itemBrand : brands[i],itemFor: "men",itemType:itemType[i],itemCategory:category[i],itemPrice : prices[i], isDiscountable  :false)
			itemSize.addToItemColor(itemColor)
			item.addToItemSize(itemSize)
			
			if(!item.save(flush : true)){
				item.errors.each {log.debug"error in saving item == "+it}
				}
			log.debug"i = "+i;
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
	
	def addItem(){
		log.debug"addItem params: "+params
		Item item = itemService.addItem(params)
		HashMap result = new HashMap();
		if(item){
			result.status = "success";
			result.message = "Item has been added successfully."
		}else{
			result.status = "error";
			result.message = "There is some issue for adding an item.Please try again."
		}
		respond result, [formats:['json', 'xml']];
		
	}
	def addItemSize(){
		log.debug"addItem params: "+params
		//Item item = itemService.addItem(params)
		HashMap result = new HashMap();
		/*if(item){
			result.status = "success";
			result.message = "Item has been added successfully."
		}else{
			result.status = "error";
			result.message = "There is some issue for adding an item.Please try again."
		}*/
		result.status = "success";
		result.message = "Item has been added successfully."
		respond result, [formats:['json', 'xml']];
	}
	def getItemDetails(){
		log.debug"getItemDetails params: "+params
		Item item = Item.findById(params.id);
		log.debug"item : "+item.itemSize.itemSizeValue
		log.debug"item : "+item.itemSize.itemColor.itemColorValue
		render template:"/admin/itemDetails", model : [item:item]
	}
	
	def uploadItemImage(){
		String fileName = params.name
		def file = request.getFile("file")
		String extension = fileName.substring(fileName.lastIndexOf(".")+ 1);
		String filePath= itemService.uploadFile(file,extension);
		int index=filePath.lastIndexOf("/");
		fileName=filePath.substring(index+1);
		HashMap res = new HashMap();
		res.result = "success";
		res.uploadedFileName=fileName;
		respond res, [formats:['json', 'xml']];
	}
}
