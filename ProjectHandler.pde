import vialab.SMT.*;
import java.util.ArrayList;

public class ProjectHandler implements DataPool{

  public void add(Project p){
    ProjectList.add(p);
  };
  
  public ArrayList<Project> getList(){
    return ProjectList;
  };
  
  public void remove(String name){
    for(Project p:ProjectList){
      if((p.name).equals(name)){
        ProjectList.remove(p);
      }
    }
  };
  
  public Project get(int index){
    return ProjectList.get(index);
  };
  
  public int size(){
    return ProjectList.size();
  };
}
