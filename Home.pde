//import gifAnimation.*;

class Home {
  
  PImage mazeText, gameText;
  PImage[] GIF;
  //Gif myAnimation;
  PFont modeFont, bFont;
  PApplet main;
  Button easy, hard;
  
  Home(PApplet input){
    main = input;
  }
  
  void homeSetUp(){
    modeFont = createFont("Arial Bold", 64);
    bFont = createFont("Arial",24);
    String dataPath =dataPath("");
    GIF = new PImage[180];
    for(int i=0;i<180;i++){
        GIF[i] = loadImage(dataPath+"\\backGround-"+i+".png");
    }
   /*
    myAnimation = new Gif(main, "backGround.gif");
    myAnimation.play();
    */
    mazeText = loadImage("maze.png");
    gameText = loadImage("game.png");
    easy = new Button(225,400,150,50,"Easy",1);
    hard = new Button(225,400+50+10,150,50,"Hard",2);

  }
  void homeDraw(){
   
    GIF[frameCount%180].resize(600, 600);
    image( GIF[frameCount%180], 0, 0);
    //image(myAnimation, 0, 0, 600, 600);
    image(mazeText, 140, 70);
    image(gameText, 133, 70+85);
    fill(0);
    textFont(modeFont);
    text("Mode",300-(textWidth("Mode")/2),380);
    textFont(bFont);
    easy.update(); 
    hard.update();
  }
}
