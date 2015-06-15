import vialab.SMT.*;

public class Project{

  public String name;
  public String date;
  public String musicLibrary;
  public PImage indexTileIMG;
  public ImageZone indexTileZone;
  
  Project(){
  };
  
  public Project(String n, String d,ImageZone iz){
    this.name = n;
    this.date = d;
    this.indexTileZone = iz;
  };


}
