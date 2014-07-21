package com.anand.utilityTagLib

class UtilityTagLib {
    static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
	
	def renderImage = { attrs ->
		println"imageName == "+attrs.value 
		File imageFile=new File(attrs.value)
		byte[] buffer=new FileInputStream(imageFile).getBytes()
		out << buffer 
	}
	
}
