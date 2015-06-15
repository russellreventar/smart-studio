import vialab.SMT.*;

public class TLResources{
  int screenWidth = 1024, screenHeight = 768;
  int IndexZoneX=0, IndexZoneY=0, IndexZoneW=screenWidth, IndexZoneH = screenHeight;
  int ControllerZoneX = 9, ControllerZoneY = 7, ControllerZoneW = 992, ControllerZoneH = 56;
  int SidepanelX = 25, SidepanelY = 80, SidepanelW = 255, SidepanelH = 675;
  int TimebarsX = SidepanelX + SidepanelW, TimebarsY = SidepanelY, TimebarsW =714,TimebarsH = 51; //position it always next to the sidepanel
  
  int MuteX = SidepanelX + 154, MuteW = 48, MuteH = 32; int Ydist = 88; //distance between panels
  int MuteY1 = SidepanelY + 111;
  int MuteY2 = SidepanelY + 114 + Ydist;
  int MuteY3 = SidepanelY + 109 + Ydist * 2;
  int MuteY4 = SidepanelY + 111 + Ydist * 3;
  int MuteY5 = SidepanelY + 114 + Ydist * 4;
  int MuteY6 = SidepanelY + 116 + Ydist * 5;
  int MuteY7 = SidepanelY + 111 + Ydist * 6;

  PImage backgroundIMG; 
  PImage sidepanelIMG;

  //Top panel
  PImage backbuttonIMG;
  PImage fastforwardIMG;  
  PImage jamsessionIMG;  //jam session btn
  PImage logoIMG;  //SS main log
  PImage pauseIMG;
  PImage playIMG;
  PImage previousIMG;
  PImage recordmainIMG;  //top record btn
  PImage rewindIMG;
  PImage settingsIMG;  //top right button
  PImage skipIMG;
  
  //main panel
  PImage timebarsIMG;  //top time bar & left add track

  PImage muteIMG;  //side panel mute
  PImage mute_IMG;
 
  ImageZone TLZone; //PRIMARY PARENT ZONE & BACKGROUND
  ImageZone SidepanelZone;
  ImageZone TimebarsZone;
  
  //top bar buttons
  ImageZone BackbuttonZone;
  ImageZone LogoZone;
  ImageZone SettingsZone;
  ImageZone JamsessionZone;
  
  ImageZone Mute1Zone;
  ImageZone Mute1_Zone;
  ImageZone Mute2Zone;
  ImageZone Mute2_Zone;
  ImageZone Mute3Zone;
  ImageZone Mute3_Zone;
  ImageZone Mute4Zone;
  ImageZone Mute4_Zone;
  ImageZone Mute5Zone;
  ImageZone Mute5_Zone;
  ImageZone Mute6Zone;
  ImageZone Mute6_Zone;
  ImageZone Mute7Zone;
  ImageZone Mute7_Zone;
  
  //controller zone
  ImageZone PlayZone;
  ImageZone PauseZone;
  ImageZone PreviousZone;
  ImageZone RewindZone;
  ImageZone FastforwardZone;
  ImageZone SkipZone;
  ImageZone RecordZone;
  
  public TLResources(){
  }
  
  public void init(){

   backgroundIMG = loadImage("timeline/background.png");
   backbuttonIMG = loadImage("timeline/backbutton.PNG");
   fastforwardIMG = loadImage("timeline/fastforward.png");
   jamsessionIMG = loadImage("timeline/jamsession.png");
   logoIMG = loadImage("timeline/logo.png");
   muteIMG = loadImage("timeline/mute.png");
   mute_IMG = loadImage("timeline/mute_.png");
   pauseIMG = loadImage("timeline/pause.png");
   playIMG = loadImage("timeline/play.png");
   previousIMG = loadImage("timeline/previous.png");
   recordmainIMG = loadImage("timeline/recordmain.png");
   rewindIMG = loadImage("timeline/rewind.png");
   sidepanelIMG = loadImage("timeline/sidepanel.PNG");
   settingsIMG = loadImage("timeline/settings.png");
   skipIMG = loadImage("timeline/skip.png");
   timebarsIMG = loadImage("timeline/timebars.png");
   
   
   TLZone = new ImageZone("TLZone", backgroundIMG, IndexZoneX, IndexZoneY, IndexZoneW, IndexZoneH);
   TimebarsZone = new ImageZone("TL_TimebarsZone", timebarsIMG, TimebarsX, TimebarsY, TimebarsW, TimebarsH);
   SidepanelZone = new ImageZone("TL_SidepanelZone", sidepanelIMG, SidepanelX, SidepanelY, SidepanelW, SidepanelH);
   LogoZone = new ImageZone("TL_LogoZone", logoIMG, ControllerZoneX + 150, ControllerZoneY, 59, 49);
   BackbuttonZone = new ImageZone("TL_BackbuttonZone", backbuttonIMG,ControllerZoneX +25 , ControllerZoneY, 94,48);
   JamsessionZone = new ImageZone("TL_JamsessionZone", jamsessionIMG, 790, ControllerZoneY - 10, 64,64); 
   SettingsZone = new ImageZone("TL_SettingsZone", settingsIMG, 900, 15, 75, 36);
   
   Mute1Zone = new ImageZone("TL_Mute1Zone", muteIMG, MuteX, MuteY1, MuteW, MuteH);
   Mute1_Zone = new ImageZone("TL_Mute1_Zone",mute_IMG,MuteX,MuteY1, MuteW, MuteH);
   Mute2Zone = new ImageZone("TL_Mute2Zone", muteIMG, MuteX, MuteY2, MuteW, MuteH);
   Mute2_Zone = new ImageZone("TL_Mute2_Zone", mute_IMG, MuteX, MuteY2, MuteW, MuteH);
   Mute3Zone = new ImageZone("TL_Mute3Zone", muteIMG, MuteX, MuteY3, MuteW, MuteH);
   Mute3_Zone = new ImageZone("TL_Mute3_Zone", mute_IMG, MuteX, MuteY3, MuteW, MuteH);
   Mute4Zone = new ImageZone("TL_Mute4Zone", muteIMG, MuteX, MuteY4, MuteW, MuteH);
   Mute4_Zone = new ImageZone("TL_Mute4_Zone", mute_IMG, MuteX, MuteY4, MuteW, MuteH);
   Mute5Zone = new ImageZone("TL_Mute5Zone", muteIMG, MuteX, MuteY5, MuteW, MuteH);
   Mute5_Zone = new ImageZone("TL_Mute5_Zone", mute_IMG, MuteX, MuteY5, MuteW, MuteH);
   Mute6Zone = new ImageZone("TL_Mute6Zone", muteIMG, MuteX, MuteY6, MuteW, MuteH);
   Mute6_Zone = new ImageZone("TL_Mute6_Zone", mute_IMG, MuteX, MuteY6, MuteW, MuteH);
   Mute7Zone = new ImageZone("TL_Mute7Zone", muteIMG, MuteX, MuteY7, MuteW, MuteH);
   Mute7_Zone = new ImageZone("TL_Mute7_Zone", mute_IMG, MuteX, MuteY7, MuteW, MuteH);
   
   PlayZone = new ImageZone("TL_PlayZone",playIMG,318,20,19,24);
   PauseZone = new ImageZone("TL_PauseZone",pauseIMG,361,20,20,24);
   PreviousZone = new ImageZone("TL_PreviousZone",previousIMG,407,20,28,25);
   RewindZone = new ImageZone("TL_RewindZone",rewindIMG,462,20,39,25);
   FastforwardZone = new ImageZone("TL_FastforwardZone",fastforwardIMG,524,20,39,24);
   SkipZone = new ImageZone("TL_SkipZone",skipIMG,590,20,28,24);
   RecordZone = new ImageZone("TL_RecordZone",recordmainIMG,640,4,47,47);  
}
  
  
}
