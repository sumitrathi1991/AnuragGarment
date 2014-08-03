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
	
	def productView(){
		log.debug"in productView = "+params.productId
	}
}
