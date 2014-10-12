package com.anand.image

class ImageController {

	def renderImage(){
		log.debug"params render "+params
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
	def renderImageById(){
		log.debug"params render image by id "+params
		Image image = Image.findById(params.imageId)
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
