/******************************************************************************************
 *                   SMART STUDIO Version 1.0 PROTOTYPE
 *  
 *  @author Mark Reventar    100429397
 *  @author Matthew McFadyen 100393593
 *
 *  This program is a prototype for an audio mixing and production multi-touch interface.
 *  The program is composed of 4 main views:
 * 
 *      Index - Shows All, recent and shared projects. To progress past this screen
 *              you must press the + button in the top left corner to create a new 
 *              project. Text input is non functional, simply press create. Resources are
 *              included in IndexResources.pde, Datapool.pde, Project.pde, ProjectHander.pde
 *              and Status.java.
 *
 *      Main  - Main mixing platform. Currently capable of playing and pausing a song
 *              for demonstration purposes, future implementations would include
 *              ability to mixing effects. Allows user to switch between samples
 *              by selecting the Instruments tab or the default File Browser Tab.
 *              Pressing the Smart Studio Circular Icon in the Top left Corner will
 *              return you to the previous screen. Pressing the timeline will enter
 *              the Timeline View for post production editing. Pressing the 3 people
 *              icon will enter Jam Session View. Resources are included in MainResources.pde
 *              class and in TimelineResources.pde class.
 *
 *   Timeline - This view allows the user to edit multiple audio sources which overlap
 *              the output to create a track. Pressing the Play button will play all
 *              audio sources on the left panel that are not currently muted. The mute 
 *              button for a track is highlighted blue when active. Selecting different
 *              combinations of sources will produce very different sounds. Currently 
 *              1:Kick / Clap, 2:Organ, 3:Snare, 4:Vocals(Heartbeat), 5:Reverb, 
 *              6:Vocals(Yeahbaby), 7: clap. Pressing Pause, the back button or the 
 *              jam session button will stop all music. Future implementations would 
 *              include a functional timeline with respective sound waves and ability
 *              to apply sound effects to individual tracks. Resources are included in the
 *              TLResources.pde class, not to be confused with (Main)TimelineResources.
 *
 * JamSession - This view allows upto 4 users to join into musical production. Selecting
 *              a + button will bring up a keyboard or drumpad for the user and a timeline.
 *              Currently non-functioning, future implementations would allow multiple user
 *              recording. Pressing the Smart Studio Icon in the center will return to the
 *              Main view. Resources are included in the JSResources.pde class. 
 *
 *******************************************************************************************/



import vialab.SMT.*;
import ddf.minim.*;
Status state;
int screenWidth = 1024, screenHeight = 768;

/***INDEX ZONE***/
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

/***MAIN ZONE***/
ImageZone MainZone;
ImageZone ControllerZone;
ImageZone TimelineZone;
ImageZone EditorLeftZone;
ImageZone EditorRightZone;
ImageZone MixerZone;
ImageZone BrowseTabZone;
ImageZone InstrumentsTabZone;

ImageZone LogoZone;//controller
ImageZone PlayZone;
ImageZone PauseZone;
ImageZone PreviousZone;
ImageZone RewindZone;
ImageZone FastforwardZone;
ImageZone SkipZone;
ImageZone RecordZone;
ImageZone JamsessionZone;
ImageZone SettingsZone;

Zone WaveZone;//timeline 
Zone MidiZone;

ImageZone EL_AlbumZone;//Editor Left;
Zone      EL_TrackNameZone;
ImageZone EL_PlayZone;
ImageZone EL_PauseZone;
ImageZone EL_ReplayZone;
Zone      EL_WaveZone;
ImageZone EL_EffectsZone;
ImageZone EL_EffectsKnobZone;
ImageZone EL_SamplerZone;
ImageZone EL_SamperKnobZone;
ImageZone EL_AddSampleZone;
ImageZone EL_AddSampleButtonZone;

ImageZone ER_AlbumZone;//Editor Right
Zone      ER_TrackNameZone;
ImageZone ER_PlayZone;
ImageZone ER_PauseZone;
ImageZone ER_ReplayZone;
Zone      ER_WaveZone;
ImageZone ER_EffectsZone;
ImageZone ER_EffectsKnobZone;
ImageZone ER_SamplerZone;
ImageZone ER_SamperKnobZone;
ImageZone ER_AddSampleZone;
ImageZone ER_AddSampleButtonZone;

ImageZone MixerButtonZone;//Mixer
ImageZone MasterZone;
ImageZone L_MuteZone;
ImageZone L_GainZone;
ImageZone L_HighZone;
ImageZone L_MedZone;
ImageZone L_LowZone;
ImageZone R_MuteZone;
ImageZone R_GainZone;
ImageZone R_HighZone;
ImageZone R_MedZone;
ImageZone R_LowZone;

ImageZone BrowseButtonZone;//LowerTab
ImageZone InstrumentsButtonZone;

/***JAMSESSION ZONES***/
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
  
/***TIMELINE ZONES***/
ImageZone TLZone;
  ImageZone TL_SidepanelZone;
  ImageZone TL_TimebarsZone;
  ImageZone TL_BackbuttonZone;
  ImageZone TL_LogoZone;
  ImageZone TL_SettingsZone;
  ImageZone TL_JamsessionZone;
  ImageZone TL_PlayZone;
  ImageZone TL_PauseZone;
  ImageZone TL_PreviousZone;
  ImageZone TL_RewindZone;
  ImageZone TL_FastforwardZone;
  ImageZone TL_SkipZone;
  ImageZone TL_RecordZone;
  ImageZone TL_Mute1Zone;
  ImageZone TL_Mute1_Zone;
  ImageZone TL_Mute2Zone;
  ImageZone TL_Mute2_Zone;
  ImageZone TL_Mute3Zone;
  ImageZone TL_Mute3_Zone;
  ImageZone TL_Mute4Zone;
  ImageZone TL_Mute4_Zone;
  ImageZone TL_Mute5Zone;
  ImageZone TL_Mute5_Zone;
  ImageZone TL_Mute6Zone;
  ImageZone TL_Mute6_Zone;
  ImageZone TL_Mute7Zone;
  ImageZone TL_Mute7_Zone;

//If timeline track is muted or not.
boolean mute1;
boolean mute2;
boolean mute3;
boolean mute4;
boolean mute5;
boolean mute6;
boolean mute7;

ProjectHandler projList;
IndexResources index;
MainResources main;
JSResources js;
TLResources tl;
Minim minim;
AudioPlayer player;//Index Player

AudioPlayer beat1;//Kick/clap
AudioPlayer beat2;//Organ
AudioPlayer beat3;//Snare
AudioPlayer beat4;//Vocals (Heartbeat Racing)
AudioPlayer beat5;//Reverb
AudioPlayer beat6;//Vocals (Yeah Baby)
AudioPlayer beat7;//Clap

void setup() {
  size(screenWidth, screenHeight, P3D);
  SMT.init(this, TouchSource.MULTIPLE);

  initIndex();
  initMain();
  initJamSession();
  initTimeline();
  
  state = Status.DEFAULT;
}

void draw() {
}

/*** Initialize Index View ***/
void initIndex() {
  index = new IndexResources();
  index.init();
  initProjects();  
  
  IndexZone = index.IndexZone;
  AddButtonZone = index.AddButtonZone;
  InfoButtonZone = index.InfoButtonZone;
  RecentTabZone = index.RecentTabZone;
  AllTabZone = index.AllTabZone;
  SharedTabZone = index.SharedTabZone;
  ProjectsViewZone = index.ProjectsViewZone;
  IndexHelpZone = index.IndexHelpZone;
  AddButtonBackgroundZone = index.AddButtonBackgroundZone;
  NewProjectZone = index.NewProjectZone;
  CreateButtonZone = index.CreateButtonZone;

  NewProjectZone.add(CreateButtonZone);
  AddButtonBackgroundZone.add(NewProjectZone);
  IndexZone.add(AddButtonZone);
  IndexZone.add(InfoButtonZone);
  IndexZone.add(ProjectsViewZone);
  IndexZone.add(RecentTabZone);
  IndexZone.add(AllTabZone);   
  IndexZone.add(SharedTabZone);
  
  SMT.add(IndexZone);  
}
/*** Initialize Main View ***/
void initMain() {
  main = new MainResources();
  main.init();
  minim = new Minim(this);
  player = minim.loadFile("data/music/Crown.mp3");  
 
  MainZone = main.MainZone;
  ControllerZone = main.ControllerZone;
  TimelineZone = main.TimelineZone;
  EditorLeftZone = main.EditorLeftZone;
  EditorRightZone = main.EditorRightZone;
  MixerZone = main.MixerZone;
  BrowseTabZone = main.BrowseTabZone;
  InstrumentsTabZone = main.InstrumentsTabZone;

  //controller
  LogoZone = main.LogoZone;
  PlayZone = main.PlayZone;
  PauseZone = main.PauseZone;
  PreviousZone = main.PreviousZone;
  RewindZone = main.RewindZone;
  FastforwardZone = main.FastforwardZone;
  SkipZone = main.SkipZone;
  RecordZone = main.RecordZone;
  JamsessionZone = main.JamsessionZone;
  SettingsZone = main.SettingsZone;

  //timeline
  WaveZone = main.WaveZone;
  MidiZone = main.MidiZone;

  //Editor Left 
  EL_AlbumZone = main.EL_AlbumZone;
  EL_TrackNameZone = main.EL_TrackNameZone;
  EL_PlayZone = main.EL_PlayZone;
  EL_PauseZone = main.EL_PauseZone;
  EL_ReplayZone = main.EL_ReplayZone;
  EL_WaveZone = main.EL_WaveZone;
  EL_EffectsZone = main.EL_EffectsZone;
  EL_EffectsKnobZone = main.EL_EffectsKnobZone;
  EL_SamplerZone = main.EL_SamplerZone;
  EL_SamperKnobZone = main.EL_SamperKnobZone;
  EL_AddSampleZone = main.EL_AddSampleZone;

  //Editor Right
  ER_AlbumZone = main.ER_AlbumZone;
  ER_TrackNameZone = main.ER_TrackNameZone;
  ER_PlayZone = main.ER_PlayZone;
  ER_PauseZone = main.ER_PauseZone;
  ER_ReplayZone = main.ER_ReplayZone;
  ER_WaveZone = main.ER_WaveZone;
  ER_EffectsZone = main.ER_EffectsZone;
  ER_EffectsKnobZone = main.ER_EffectsKnobZone;
  ER_SamplerZone = main.ER_SamplerZone;
  ER_SamperKnobZone = main.ER_SamperKnobZone;
  ER_AddSampleZone = main.ER_AddSampleZone;
  
  //Mixer
  MixerButtonZone = main.MixerButtonZone;
  MasterZone = main.MasterZone;
  L_MuteZone = main.L_MuteZone;
  L_GainZone = main.L_GainZone;
  L_HighZone = main.L_HighZone;
  L_MedZone = main.L_MedZone;
  L_LowZone = main.L_LowZone;
  R_MuteZone = main.R_MuteZone;
  R_GainZone = main.R_GainZone;
  R_HighZone = main.R_HighZone;
  R_MedZone = main.R_MedZone;
  R_LowZone = main.R_LowZone;
  
  //Tab
  BrowseButtonZone = main.BrowseButtonZone;
  InstrumentsButtonZone = main.InstrumentsButtonZone;
  
  ControllerZone.add(LogoZone);
  ControllerZone.add(PlayZone);
  ControllerZone.add(PauseZone);
  ControllerZone.add(PreviousZone);
  ControllerZone.add(RewindZone);
  ControllerZone.add(FastforwardZone);
  ControllerZone.add(SkipZone);
  ControllerZone.add(RecordZone);
  ControllerZone.add(JamsessionZone);
  ControllerZone.add(SettingsZone);
  
  EditorLeftZone.add(EL_AlbumZone);
  EditorLeftZone.add(EL_TrackNameZone);
  EditorLeftZone.add(EL_PlayZone);
  EditorLeftZone.add(EL_PauseZone);
  EditorLeftZone.add(EL_ReplayZone);
  EditorLeftZone.add(EL_WaveZone);
  EditorLeftZone.add(EL_EffectsZone);
  EditorLeftZone.add(EL_EffectsKnobZone);
  EditorLeftZone.add(EL_SamplerZone);
  EditorLeftZone.add(EL_SamperKnobZone);
  EditorLeftZone.add(EL_AddSampleZone);

  //Editor Right
  EditorRightZone.add(ER_AlbumZone);
  EditorRightZone.add(ER_TrackNameZone);
  EditorRightZone.add(ER_PlayZone);
  EditorRightZone.add(ER_PauseZone);
  EditorRightZone.add(ER_ReplayZone);
  EditorRightZone.add(ER_WaveZone);
  EditorRightZone.add(ER_EffectsZone);
  EditorRightZone.add(ER_EffectsKnobZone);
  EditorRightZone.add(ER_SamplerZone);
  EditorRightZone.add(ER_SamperKnobZone);
  EditorRightZone.add(ER_AddSampleZone);
  
  //mixer
  MixerZone.add(MixerButtonZone);
  MixerZone.add(MasterZone);
  MixerZone.add(L_MuteZone);
  MixerZone.add(L_GainZone);
  MixerZone.add(L_HighZone);
  MixerZone.add(L_MedZone);
  MixerZone.add(L_LowZone);
  MixerZone.add(R_MuteZone);
  MixerZone.add(R_GainZone);
  MixerZone.add(R_HighZone);
  MixerZone.add(R_MedZone);
  MixerZone.add(R_LowZone);
  
  MainZone.add(ControllerZone);
  MainZone.add(TimelineZone);
  MainZone.add(EditorLeftZone);
  MainZone.add(EditorRightZone);
  MainZone.add(MixerZone);
  
  MainZone.add(BrowseButtonZone);
  MainZone.add(InstrumentsButtonZone);
  MainZone.add(BrowseTabZone);
}
/*** Initialize Jam Session View ***/
void initJamSession() {
  js = new JSResources();
  js.init();
  
    JSZone = js.JSZone;
    JSLogoZone = js.JSLogoZone;
   GroupZone= js.GroupZone;
   AddLeftZone= js.AddLeftZone;
   AddRightZone= js.AddRightZone;
   AddTopZone= js.AddTopZone;
   AddBottomZone= js.AddBottomZone;
   TopZone= js.TopZone;
   BottomZone= js.BottomZone;
   RightZone= js.RightZone;
   LeftZone= js.LeftZone;
   
   GroupZone.add(JSLogoZone);
   JSZone.add(GroupZone);
   JSZone.add(AddLeftZone);
   JSZone.add(AddRightZone);
   JSZone.add(AddTopZone);
   JSZone.add(AddBottomZone);
}

/*** Initialize Timeline View ***/
void initTimeline() {
   tl = new TLResources();
   tl.init();
   
  minim = new Minim(this);
  beat1 = minim.loadFile("data/music/A2kickclap.wav");  
  beat2 = minim.loadFile("data/music/D3organ.wav");
  beat3 = minim.loadFile("data/music/B2snare.wav");
  beat4 = minim.loadFile("data/music/C3heartbeat.wav");
  beat5 = minim.loadFile("data/music/D4reverb.wav");
  beat6 = minim.loadFile("data/music/C2yeahbaby.wav");
  beat7 = minim.loadFile("data/music/clap.wav");
  
  //Initial timeline configuration for what tracks are muted
  mute1 = true;
  mute2 = false;
  mute3 = true;
  mute4 = false;
  mute5 = true;
  mute6 = true;
  mute7 = false;
   
  TLZone = tl.TLZone;
  TL_SidepanelZone = tl.SidepanelZone;
  TL_TimebarsZone = tl.TimebarsZone;
  
  TL_BackbuttonZone = tl.BackbuttonZone;
  TL_LogoZone = tl.LogoZone;
  TL_JamsessionZone = tl.JamsessionZone;
  TL_SettingsZone = tl.SettingsZone;
  
  TL_PlayZone = tl.PlayZone;
  TL_PauseZone = tl.PauseZone;
  TL_PreviousZone = tl.PreviousZone;
  TL_RewindZone = tl.RewindZone;
  TL_FastforwardZone = tl.FastforwardZone;
  TL_SkipZone = tl.SkipZone;
  TL_RecordZone = tl.RecordZone;
  
  TL_Mute1Zone = tl.Mute1Zone;
  TL_Mute1_Zone = tl.Mute1_Zone;
  TL_Mute2Zone = tl.Mute2Zone;
  TL_Mute2_Zone = tl.Mute2_Zone;
  TL_Mute3Zone = tl.Mute3Zone;
  TL_Mute3_Zone = tl.Mute3_Zone;
  TL_Mute4Zone = tl.Mute4Zone;
  TL_Mute4_Zone = tl.Mute4_Zone;
  TL_Mute5Zone = tl.Mute5Zone;
  TL_Mute5_Zone = tl.Mute5_Zone;
  TL_Mute6Zone = tl.Mute6Zone;
  TL_Mute6_Zone = tl.Mute6_Zone;
  TL_Mute7Zone = tl.Mute7Zone;
  TL_Mute7_Zone = tl.Mute7_Zone;
  
  //main music controllers
  TLZone.add(TL_PlayZone);
  TLZone.add(TL_PauseZone);
  TLZone.add(TL_PreviousZone);
  TLZone.add(TL_RewindZone);
  TLZone.add(TL_FastforwardZone);
  TLZone.add(TL_SkipZone);
  TLZone.add(TL_RecordZone);
  
  //top bar functionality
  TLZone.add(TL_BackbuttonZone);
  TLZone.add(TL_LogoZone);
  TLZone.add(TL_JamsessionZone);
  TLZone.add(TL_SettingsZone);
  
  //main views
  TLZone.add(TL_TimebarsZone);
  TLZone.add(TL_SidepanelZone);
  
  //mute buttons
  TLZone.add(TL_Mute1_Zone);//start muted
  TLZone.add(TL_Mute2Zone);
  TLZone.add(TL_Mute3_Zone);//start muted
  TLZone.add(TL_Mute4Zone);
  TLZone.add(TL_Mute5_Zone);//start muted
  TLZone.add(TL_Mute6_Zone);//start nmuted
  TLZone.add(TL_Mute7Zone);
}

/**INDEX FUNCTIONS**/
void  touchIndexZone(Zone zone) {}
void  touchProjectsViewZone(Zone zone) {}
void  touchAddButtonZone(Zone zone) {}
void  touchInfoButtonZone(Zone zone) {}
void  touchRecentTabZone(Zone zone) {}
void  touchAllTabZone(Zone zone) {}
void  touchSharedTabZone(Zone zone) {}
void  touchIndexHelpZone(Zone zone) {}
void  touchAddButtonBackgroundZone(Zone zone) {}
void  touchProjTileZone(Zone zone) {}
void  touchProjTileZone2(Zone zone) {}
void  touchProjTileZone3(Zone zone) {}
void  touchNewProjectZone(Zone zone) {
  zone.rst(false,false,true);
}

/*** Actions on Press ***/
void pressCreateButtonZone(Zone zone) {
  CreateButtonZone.img = index.createButton_IMG;
  SMT.add(MainZone);
  SMT.remove(IndexZone);
}
void  pressAddButtonBackgroundZone(Zone zone) {
  if (state == Status.CREATE) {
    IndexZone.remove(AddButtonBackgroundZone);
    state = Status.DEFAULT;
  }
}
void  pressAddButtonZone(Zone zone) {
  if (state != Status.CREATE) {
    IndexZone.add(AddButtonBackgroundZone);
    state = Status.CREATE;
  }
  else {
    state = Status.DEFAULT;
  }
}
void  pressIndexHelpZone(Zone zone) {
  if (state == Status.HELP) {
    IndexZone.remove(IndexHelpZone);
    state = Status.DEFAULT;
  }
}
void  pressInfoButtonZone(Zone zone) {
  if (state != Status.HELP) {
    IndexZone.add(IndexHelpZone);
    state = Status.HELP;
  }
  else {
    state = Status.DEFAULT;
  }
}
void  pressRecentTabZone(Zone zone) {
  state = Status.RECENT;
  drawProjectsViewZone(state);
}

void  pressAllTabZone(Zone zone) {
  state = Status.ALL;
  drawProjectsViewZone(state);
}
void  pressSharedTabZone(Zone zone) {
  state = Status.SHARED;
  drawProjectsViewZone(state);
}

void drawProjectsViewZone(Status s) {
  if (s == Status.RECENT) {
    RecentTabZone.img = index.recentButton_IMG;
    AllTabZone.img = index.allButtonIMG;
    SharedTabZone.img = index.sharedButtonIMG;
  }

  else if (s == Status.ALL) {
    AllTabZone.img = index.allButton_IMG;
    RecentTabZone.img = index.recentButtonIMG;
    SharedTabZone.img = index.sharedButtonIMG;
  }

  else if (s == Status.SHARED) {
    SharedTabZone.img = index.sharedButton_IMG;
    RecentTabZone.img = index.recentButtonIMG;
    AllTabZone.img = index.allButtonIMG;
  }
  else {
  }

  for (Project p:projList.getList()) {
    ProjectsViewZone.add(p.indexTileZone);
  }
}
/*** Initialize Projects for Index View ***/
void initProjects() {
  projList = new ProjectHandler();
  PImage projectTileIMG = loadImage("index/projectTile.png");

  ImageZone ProjTileZone = new ImageZone("ProjTileZone", projectTileIMG, index.tileLeftMargin, 50, 132, 146);
  ImageZone ProjTileZone2 = new ImageZone("ProjTileZone2", projectTileIMG, index.tileLeftMargin + index.tileSpacing, 50, 132, 146);
  ImageZone ProjTileZone3 = new ImageZone("ProjTileZone3", projectTileIMG, index.tileLeftMargin + index.tileSpacing*2, 50, 132, 146);

  Project p1 = new Project("HipHop ", "09/22/2013", ProjTileZone);
  Project p2 = new Project("HipHop ", "09/22/2013", ProjTileZone2);
  Project p3 = new Project("HipHop ", "09/22/2013", ProjTileZone3);

  projList.add(p1);
  projList.add(p2);
  projList.add(p3);
}

/**MAIN FUNCTIONS**/
void touchMainZone(Zone zone){}
void touchControllerZone(Zone zone){}
void touchTimelineZone(Zone zone){
  SMT.add(TLZone);
  SMT.remove(MainZone);
}
void touchEditorLeftZone(Zone zone){}
void touchEditorRightZone(Zone zone){}
void touchMixerZone(Zone zone){}
void touchBrowseTabZone(Zone zone){}
void touchInstrumentsTabZone(Zone zone){}
void touchEL_EffectsKnobZone(Zone zone){
  zone.rst(true,false,false);
}

void drawWaveZone(Zone zone){}
void touchWaveZone(Zone zone){}
void drawMidiZone(Zone zone){}
void touchMidiZone(Zone zone){}
void touchEL_AlbumZone(Zone zone){}
void touchEL_TrackNameZone(Zone zone){}
void drawEL_TrackNameZone(Zone zone){}
void touchEL_PlayZone(Zone zone){}
void touchEL_PauseZone(Zone zone){}
void touchEL_ReplayZone(Zone zone){}
void drawEL_WaveZone(Zone zone){}
void touchEL_WaveZone(Zone zone){}
void touchEL_EffectsZone(Zone zone){}
void touchEL_SamplerZone(Zone zone){}
void touchEL_SamperKnobZone(Zone zone){}
void touchEL_AddSampleZone(Zone zone){}
void touchER_AlbumZone(Zone zone){}
void touchER_TrackNameZone(Zone zone){}
void drawER_TrackNameZone(Zone zone){}
void touchER_PlayZone(Zone zone){}
void touchER_PauseZone(Zone zone){}
void touchER_ReplayZone(Zone zone){}
void drawER_WaveZone(Zone zone){}
void touchER_WaveZone(Zone zone){}
void touchER_EffectsZone(Zone zone){}
void touchER_SamplerZone(Zone zone){}
void touchER_SamperKnobZone(Zone zone){}
void touchER_AddSampleZone(Zone zone){}
void touchER_EffectsKnobZone(Zone zone){}
void touchMixerButtonZone(Zone zone){}
void touchMasterZone(Zone zone){}
void touchL_MuteZone(Zone zone){}
void touchL_GainZone(Zone zone){}
void touchL_HighZone(Zone zone){}
void touchL_MedZone(Zone zone){}
void touchL_LowZone(Zone zone){}
void touchR_MuteZone(Zone zone){}
void touchR_GainZone(Zone zone){}
void touchR_HighZone(Zone zone){}
void touchR_MedZone(Zone zone){}
void touchR_LowZone(Zone zone){}

//Move from Main back to Index
void pressLogoZone(Zone zone){
  SMT.add(IndexZone);
  SMT.remove(MainZone);
  state = Status.CREATE;
  player.pause();
}

void pressPlayZone(Zone zone){
  player.play();
}

void pressPauseZone(Zone zone){
  player.pause();
}

void pressPreviousZone(Zone zone){}
void pressRewindZone(Zone zone){}
void pressFastforwardZone(Zone zone){}
void pressSkipZone(Zone zone){}
void pressRecordZone(Zone zone){}

//enter Jam Session from Main View
void pressJamsessionZone(Zone zone){
  SMT.add(JSZone);
  SMT.remove(MainZone);
  player.pause();
}

void pressSettingsZone(Zone zone){}

void pressBrowseButtonZone(Zone zone){
    state = Status.BROWSE;
   tabHandler(state);
}

void pressInstrumentsButtonZone(Zone zone){
    state = Status.INSTRUMENTS;
   tabHandler(state);
}

void tabHandler(Status s){
  if(s == Status.INSTRUMENTS){
      InstrumentsButtonZone.img = main.instrumentsButton_IMG;
      BrowseButtonZone.img = main.browseButtonIMG;
      MainZone.remove(BrowseTabZone);
      MainZone.add(InstrumentsTabZone);
  }else if(s == Status.BROWSE){
     BrowseButtonZone.img = main.browseButton_IMG;
     InstrumentsButtonZone.img = main.instrumentsButtonIMG;
     MainZone.remove(InstrumentsTabZone);
     MainZone.add(BrowseTabZone);
  }else{
  }
}

/***JAM SESSION FUNCTIONS***/
void touchJSZone(Zone zone){}
void touchGroupZone(Zone zone){}
void touchTopZone(Zone zone){}
void touchBottomZone(Zone zone){}
void touchRightZone(Zone zone){}
void touchLeftZone(Zone zone){}

void pressJSLogoZone(Zone zone){
  SMT.add(MainZone);
  SMT.remove(JSZone);
}
void pressAddLeftZone(Zone zone){
     JSZone.add(LeftZone);
}
void pressAddRightZone(Zone zone){
     JSZone.add(RightZone);
}
void pressAddTopZone(Zone zone){
     JSZone.add(TopZone);
}
void pressAddBottomZone(Zone zone){
     JSZone.add(BottomZone);
}


/***TIMELINE FUNCTIONS***/
void touchTLZone(Zone zone){}
void pressTL_LogoZone(Zone zone){}

void pressTL_BackbuttonZone(Zone zone){
  SMT.add(MainZone);
  SMT.remove(TLZone);
  //pause all music playing when leaving view
  beat1.pause();
  beat2.pause();
  beat3.pause();
  beat4.pause();
  beat5.pause();
  beat6.pause();
  beat7.pause();
}
void pressTL_JamsessionZone(Zone zone){
  SMT.add(JSZone);
  SMT.remove(TLZone);
  //pause all music playing when leaving view
  beat1.pause();
  beat2.pause();
  beat3.pause();
  beat4.pause();
  beat5.pause();
  beat6.pause();
  beat7.pause();
}
void pressTL_SettingsZone(Zone zone){}
//pressing play button starts all tracks that aren't muted.
void pressTL_PlayZone(Zone zone){
  if (!mute1){
    beat1.play();
    beat1.loop();
  }
  if (!mute2){
    beat2.play();
    beat2.loop();
  }
  if (!mute3){
    beat3.play();
    beat3.loop();
  }
  if (!mute4){
    beat4.play();
    beat4.loop();
  }
  if (!mute5){
    beat5.play();
    beat5.loop();
  }
  if (!mute6){
    beat6.play();
    beat6.loop();
  }
  if(!mute7){
    beat7.play();
    beat7.loop();
  }   
}
//pause all tracks
void pressTL_PauseZone(Zone zone){
  beat1.pause();
  beat2.pause();
  beat3.pause();
  beat4.pause();
  beat5.pause();
  beat6.pause();
  beat7.pause();
}
//could use a stop button!
void pressTL_PreviousZone(Zone zone){}
void pressTL_RewindZone(Zone zone){}
void pressTL_FastforwardZone(Zone zone){}
void pressTL_SkipZone(Zone zone){}
void pressTL_RecordZone(Zone zone){}
void pressTL_SidepanelZone(Zone zone){}
void pressTL_TimebarsZone(Zone zone){}

/**** MUTE 1 ****/
void pressTL_Mute1Zone(Zone zone){
  mute1 = true;
  TLZone.add(TL_Mute1_Zone);
  TLZone.remove(TL_Mute1Zone);  
  beat1.pause();
}
void pressTL_Mute1_Zone(Zone zone){
  mute1 = false;
  TLZone.add(TL_Mute1Zone);
  TLZone.remove(TL_Mute1_Zone);
  beat1.play();
  beat1.loop();
}
/**** MUTE 2 ****/
void pressTL_Mute2Zone(Zone zone){
  mute2 = true;
  TLZone.add(TL_Mute2_Zone);
  TLZone.remove(TL_Mute2Zone);
  beat2.pause();
}
void pressTL_Mute2_Zone(Zone zone){
  mute2 = false;
  TLZone.add(TL_Mute2Zone);
  TLZone.remove(TL_Mute2_Zone);
  beat2.play();
  beat2.loop();
}
/**** MUTE 3 ****/
void pressTL_Mute3Zone(Zone zone){
  mute3 = true;
  TLZone.add(TL_Mute3_Zone);
  TLZone.remove(TL_Mute3Zone); 
  beat3.pause(); 
}
void pressTL_Mute3_Zone(Zone zone){
  mute3 = false;
  TLZone.add(TL_Mute3Zone);
  TLZone.remove(TL_Mute3_Zone);
  beat3.play();
  beat3.loop();
}
/**** MUTE 4 ****/
void pressTL_Mute4Zone(Zone zone){
  mute4 = true;
  TLZone.add(TL_Mute4_Zone);
  TLZone.remove(TL_Mute4Zone);
  beat4.pause();  
}
void pressTL_Mute4_Zone(Zone zone){
  mute4 = false;
  TLZone.add(TL_Mute4Zone);
  TLZone.remove(TL_Mute4_Zone);
  beat4.play();
  beat4.loop();
}
/**** MUTE 5 ****/
void pressTL_Mute5Zone(Zone zone){
  mute5 = true;
  TLZone.add(TL_Mute5_Zone);
  TLZone.remove(TL_Mute5Zone);
  beat5.pause();
}
void pressTL_Mute5_Zone(Zone zone){
  mute5 = false;
  TLZone.add(TL_Mute5Zone);
  TLZone.remove(TL_Mute5_Zone); 
  beat5.loop();
}
/**** MUTE 6 ****/
void pressTL_Mute6Zone(Zone zone){
  mute6 = true;
  TLZone.add(TL_Mute6_Zone);
  TLZone.remove(TL_Mute6Zone);
  beat6.pause();
}
void pressTL_Mute6_Zone(Zone zone){
  mute6 = false;
  TLZone.add(TL_Mute6Zone);
  TLZone.remove(TL_Mute6_Zone); 
  beat6.loop();
}
/**** MUTE 7 ****/
void pressTL_Mute7Zone(Zone zone){
  mute7 = true;
  TLZone.add(TL_Mute7_Zone);
  TLZone.remove(TL_Mute7Zone);
  beat7.pause();
}
void pressTL_Mute7_Zone(Zone zone){
  mute7 = false;
  TLZone.add(TL_Mute7Zone);
  TLZone.remove(TL_Mute7_Zone); 
  beat7.loop();
}

