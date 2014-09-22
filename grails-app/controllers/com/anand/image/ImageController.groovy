package com.anand.image

class ImageController {

	def renderImage(){
		Image image = Image.findByName(params.imageName)
		String imagePath = image?.imageUrl
		if(imagePath){
		if(new File(imagePath).exists()){
			File imageFile=new File(imagePath)
			byte[] buffer=new FileInputStream(imageFile).getBytes()
			response.setContentLength(buffer.length)
			response.outputStream.write(buffer)
		}
	}
	}
}
