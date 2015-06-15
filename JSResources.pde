import vialab.SMT.*;

public class JSResources{

  int screenWidth = 1024, screenHeight = 768;
  int ControllerZoneX = 9, ControllerZoneY = 7, ControllerZoneW = 992, ControllerZoneH = 56;

  PImage backgroundIMG;

  PImage groupIMG;
  PImage logoIMG;
  PImage addLeftIMG;
  PImage addRightIMG;
  PImage addTopIMG;
  PImage addBottomIMG;
  PImage topIMG;
  PImage bottomIMG;
  PImage rightIMG;
  PImage leftIMG;
  PImage settingsIMG;

  ImageZone JSZone;
  ImageZone JSLogoZone;
  ImageZone GroupZone;
  ImageZone AddLeftZone;
  ImageZone AddRightZone;
  ImageZone AddTopZone;
  ImageZone AddBottomZone;
  ImageZone TopZone;
  ImageZone BottomZone;
  ImageZone RightZone;
  ImageZone LeftZone;

  public JSResources(){
  }

  public void init(){
    //INIT IMAGES
    backgroundIMG = loadImage("main/background.png");
    
     groupIMG = loadImage("jamsession/group.png");
     logoIMG = loadImage("main/logo.png");
     addLeftIMG = loadImage("jamsession/addUserLeft.png");
     addRightIMG = loadImage("jamsession/addUserRight.png");
     addTopIMG = loadImage("jamsession/addUserTop.png");
     addBottomIMG= loadImage("jamsession/addUserBottom.png");
     topIMG = loadImage("jamsession/top.png");
     bottomIMG = loadImage("jamsession/bottom.png");
     rightIMG = loadImage("jamsession/right.png");
     leftIMG = loadImage("jamsession/left.png");

    
    JSZone = new ImageZone("JSZone", backgroundIMG, 0, 0, 1024, 768);
    
    JSLogoZone = new ImageZone("JSLogoZone",logoIMG,179,143,59,49);
    GroupZone = new ImageZone("GroupZone",groupIMG,192,185,617,357);
    AddLeftZone = new ImageZone("AddLeftZone",addLeftIMG,-6,295,193,129);
    AddRightZone = new ImageZone("AddRightZone",addRightIMG,824,300,191,129);
    AddTopZone= new ImageZone("AddTopZone",addTopIMG,442,-4,129,186);
    AddBottomZone= new ImageZone("AddBottomZone",addBottomIMG,445,559,129,189);
    TopZone= new ImageZone("TopZone",topIMG,204,10,791,295);
    BottomZone= new ImageZone("BottomZone",bottomIMG,6,419,818,302);
    RightZone= new ImageZone("RightZone",rightIMG,696,179,295,541);
    LeftZone= new ImageZone("LeftZone",leftIMG,19,5,295,542);
  } 
}


