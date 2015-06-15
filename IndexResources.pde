import vialab.SMT.*;

public class IndexResources{

int screenWidth = 1024, screenHeight = 768;
int IndexZoneX=0, IndexZoneY=0, IndexZoneW=screenWidth, IndexZoneH = screenHeight;
int addButtonX = 55, addButtonY = 55, addButtonW = 96, addButtonH = 96;
int infoButtonX = 870, infoButtonY = 55, infoButtonW = 96, infoButtonH = 96;
int buttonW = 50, buttonH = 50;
boolean help;
int tileSpacing = 225, tileLeftMargin = 50;

  //INDEX WINDOW
PImage backgroundIMG;
PImage addButtonIMG;
PImage addButton_IMG;
PImage infoButtonIMG;
PImage infoButton_IMG;
PImage recentButtonIMG;
PImage recentButton_IMG;
PImage allButtonIMG;
PImage allButton_IMG;
PImage sharedButtonIMG;
PImage sharedButton_IMG;
PImage projectsViewIMG;
PImage indexHelpIMG;
PImage addButtonBackgroundIMG;
PImage newProjectIMG;
PImage createButtonIMG;
PImage createButton_IMG;

ImageZone IndexZone;
ImageZone AddButtonZone;
ImageZone InfoButtonZone;
ImageZone RecentTabZone;
ImageZone AllTabZone;
ImageZone SharedTabZone;
ImageZone ProjectsViewZone;
ImageZone IndexHelpZone;
ImageZone AddButtonBackgroundZone;
ImageZone NewProjectZone;
ImageZone CreateButtonZone;

  public IndexResources(){
  }

  public void init(){
    //INIT IMAGES
      backgroundIMG    = loadImage("index/background.jpg");
  addButtonIMG     = loadImage("index/addButton.png");
  infoButtonIMG    = loadImage("index/infoButton.png");
  infoButton_IMG    = loadImage("index/infoButton_.png");
  recentButtonIMG  = loadImage("index/recentButton.png");
  recentButton_IMG = loadImage("index/recentButton_.png");
  allButtonIMG  = loadImage("index/allButton.png");
  allButton_IMG = loadImage("index/allButton_.png");
  sharedButtonIMG  = loadImage("index/sharedButton.png");
  sharedButton_IMG = loadImage("index/sharedButton_.png");
  projectsViewIMG = loadImage("index/projectsView.png");
  indexHelpIMG = loadImage("index/indexHelp.png");
  addButtonBackgroundIMG = loadImage("index/addButton_.png");
  newProjectIMG = loadImage("index/newProject.png");
  createButtonIMG = loadImage("index/createButton.png");
  createButton_IMG = loadImage("index/createButton_.png");

    
      IndexZone = new ImageZone("IndexZone", backgroundIMG, IndexZoneX, IndexZoneY, IndexZoneW, IndexZoneH);
  AddButtonZone = new ImageZone("AddButtonZone", addButtonIMG, addButtonX, addButtonY, addButtonW, addButtonH);
  InfoButtonZone = new ImageZone( "InfoButtonZone", infoButtonIMG, infoButtonX, infoButtonY, infoButtonW, infoButtonH);
  RecentTabZone = new ImageZone( "RecentTabZone", recentButtonIMG, 231, 350, 180, 50);
  AllTabZone = new ImageZone( "AllTabZone", allButtonIMG, 410, 350, 180, 50);
  SharedTabZone = new ImageZone( "SharedTabZone", sharedButtonIMG, 589, 350, 180, 50);
  ProjectsViewZone = new ImageZone( "ProjectsViewZone", projectsViewIMG, 52, 398, 920, 325);
  IndexHelpZone = new ImageZone("IndexHelpZone", indexHelpIMG, IndexZoneX, IndexZoneY, IndexZoneW, IndexZoneH);
  AddButtonBackgroundZone = new ImageZone("addButtonBackgroundZone", addButtonBackgroundIMG, IndexZoneX, IndexZoneY, IndexZoneW, IndexZoneH);
  NewProjectZone = new ImageZone( "NewProjectZone", newProjectIMG, 230, 57, 563, 666);
  CreateButtonZone = new ImageZone("CreateButtonZone", createButtonIMG, 212, 582, 148, 38);
  } 
}


