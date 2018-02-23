  //-------------- Check color statues
  boolean colorMode1=false;
  boolean colorMode2=false;
  boolean colorMode3=false;
  boolean colorMode4=false;
  boolean colorMode5=false;
  boolean colorMode6=false;
  
  boolean colorMode_Video=true;
  
  
  void keyPressed() {
  if (key == '1') {
    colorMode1 = true;
    colorMode2= false;
    colorMode3= false;
    colorMode4= false;
    colorMode_Video=false;
  }

  if (key == '2') {
    colorMode1 = false;
    colorMode2= true;
    colorMode3= false;
    colorMode4= false;
    colorMode_Video=false;
  }

  if (key == '3') {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= true;
    colorMode4= false;
    colorMode_Video=false;
  }

  if (key == '4') {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= false;
    colorMode4= true;
    colorMode_Video=false;
  }


  if (key == 'r' || key == 'R') {

    colorMode1 = false;
    colorMode2= false;
    colorMode3= false;
    colorMode4= false;
    colorMode_Video=true;
  }
}

