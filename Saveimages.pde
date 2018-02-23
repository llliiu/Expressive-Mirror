void saveImage(){
  
  
  if(image_index<10){
     save("images/image_000"+ image_index + ".tif");
  }
  
  else if (image_index >=10 && image_index < 100){
     save("images/image_00"+ image_index + ".tif");
  }
    else if (image_index >=100 && image_index < 1000){
     save("images/image_0"+ image_index + ".tif");
  }
  
     else if (image_index >=1000 && image_index < 10000){
     save("images/image_"+ image_index + ".tif");
  }
  
  timer = 0;
  

}
