void presentation() {
  int totalPhase = 4000;
  int texture = 1200; 
  int ori_col = 1000; 
  int first_col = 1600;
  int second_col = 2200;  
  int third_col = 2600;
  int forth_col = 3200;
  int fifth_col = 3600;
  int six_col = 4000;


  if (presentFrame % totalPhase < ori_col ) {
    colorMode1=false;
    colorMode2=false;
    colorMode3=false;
    colorMode4=false;
    colorMode5=false;
    colorMode6=false;

    colorMode_Video=true;
  }

  if (presentFrame % totalPhase >=ori_col && presentFrame % totalPhase <first_col) {
    colorMode1 = true;
    colorMode2= false;
    colorMode3= false;
    colorMode4= false;
    colorMode5=false;
    colorMode6=false;
    colorMode_Video=false;
  }

  if (presentFrame % totalPhase >=first_col && presentFrame % totalPhase <second_col) {
    colorMode1 = false;
    colorMode2= true;
    colorMode3= false;
    colorMode4= false;
    colorMode_Video=false;
    colorMode5=false;
    colorMode6=false;
  }


  if (presentFrame % totalPhase >=second_col && presentFrame % totalPhase <third_col) {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= true;
    colorMode4= false;
    colorMode5=false;
    colorMode6=false;
    colorMode_Video=false;
  }

  if (presentFrame % totalPhase >=third_col && presentFrame % totalPhase <forth_col) {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= false;
    colorMode4= true;
    colorMode5=false;
    colorMode6=false;
    colorMode_Video=false;
  }



  if (presentFrame % totalPhase >=forth_col && presentFrame % totalPhase <fifth_col) {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= false;
    colorMode4= false;
    colorMode5=true;
    colorMode6=false;
    colorMode_Video=false;
  }

  if (presentFrame % totalPhase >=fifth_col && presentFrame % totalPhase <six_col) {
    colorMode1 = false;
    colorMode2= false;
    colorMode3= false;
    colorMode4= false;
    colorMode5=false;
    colorMode6=true;
    colorMode_Video=false;
  }
  
    if (presentFrame % totalPhase ==six_col){
      presentFrame=0;
    }
  
}

