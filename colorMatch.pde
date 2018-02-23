float DefaultcolorSum;
float CurrentcolorSum;
int FinalcolorIndex;

color colorMatch1(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor1[0]))+ abs(green(fillColor)-green(chosenColor1[0]))+ abs(blue(fillColor)-blue(chosenColor1[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor1.length; i++) {

    CurrentcolorSum= abs(red(fillColor)-red(chosenColor1[i]))+ abs(green(fillColor)-green(chosenColor1[i]))+ abs(blue(fillColor)-blue(chosenColor1[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor1[FinalcolorIndex];
}

color colorMatch2(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor2[0]))+ abs(green(fillColor)-green(chosenColor2[0]))+ abs(blue(fillColor)-blue(chosenColor2[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor2.length; i++) {
    CurrentcolorSum= abs(red(fillColor)-red(chosenColor2[i]))+ abs(green(fillColor)-green(chosenColor2[i]))+ abs(blue(fillColor)-blue(chosenColor2[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor2[FinalcolorIndex];
}

color colorMatch3(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor3[0]))+ abs(green(fillColor)-green(chosenColor3[0]))+ abs(blue(fillColor)-blue(chosenColor3[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor3.length; i++) {

    CurrentcolorSum= abs(red(fillColor)-red(chosenColor3[i]))+ abs(green(fillColor)-green(chosenColor3[i]))+ abs(blue(fillColor)-blue(chosenColor3[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor3[FinalcolorIndex];
}

color colorMatch4(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor4[0]))+ abs(green(fillColor)-green(chosenColor4[0]))+ abs(blue(fillColor)-blue(chosenColor4[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor4.length; i++) {

    CurrentcolorSum= abs(red(fillColor)-red(chosenColor4[i]))+ abs(green(fillColor)-green(chosenColor4[i]))+ abs(blue(fillColor)-blue(chosenColor4[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor4[FinalcolorIndex];
}

color colorMatch5(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor5[0]))+ abs(green(fillColor)-green(chosenColor5[0]))+ abs(blue(fillColor)-blue(chosenColor5[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor5.length; i++) {

    CurrentcolorSum= abs(red(fillColor)-red(chosenColor5[i]))+ abs(green(fillColor)-green(chosenColor5[i]))+ abs(blue(fillColor)-blue(chosenColor5[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor5[FinalcolorIndex];
}

color colorMatch6(color fillColor) {
  DefaultcolorSum= abs(red(fillColor)-red(chosenColor6[0]))+ abs(green(fillColor)-green(chosenColor6[0]))+ abs(blue(fillColor)-blue(chosenColor6[0]));
  FinalcolorIndex=0;
  for (int i=1; i<chosenColor6.length; i++) {

    CurrentcolorSum= abs(red(fillColor)-red(chosenColor6[i]))+ abs(green(fillColor)-green(chosenColor6[i]))+ abs(blue(fillColor)-blue(chosenColor6[i]));
    if (CurrentcolorSum<DefaultcolorSum) {
      DefaultcolorSum= CurrentcolorSum;
      FinalcolorIndex=i;
    }
  }
  return chosenColor6[FinalcolorIndex];
}


