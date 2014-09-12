class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
        }
		
		/*name "filterByBrand" : "/productView/$itemBrand" {
			controller = 'home'
			action = 'showProducts'
		}
		
		name "filterByItemType": "/productView/$itemType" {
			controller = 'home'
			action = 'showProducts'
		}*/
		"/password/reset/$token"(controller:"register", parseRequest:true, action:"resetPassword")
		"/authenticate/user/$token"(controller:"register", action:"authenticateUser", parseRequest:true)
		name productDetail: "/productDetail/$productId" {
		controller = 'home'
		action = 'productDetail'
		}
		
	
		"/"(controller:'home')
        "500"(view:'/error')
	}
}
