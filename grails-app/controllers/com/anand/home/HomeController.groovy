package com.anand.home

import com.anand.item.Item

class HomeController {

    def index() {
		List itemList = Item.list()
		[itemList : itemList]
	}
	def loginView(){
		render template:"/home/loginView"
	}
}
