import vialab.SMT.*;

public class MainResources{

  int screenWidth = 1024, screenHeight = 768;
  int ControllerZoneX = 9, ControllerZoneY = 7, ControllerZoneW = 992, ControllerZoneH = 56;

  PImage backgroundIMG;

  PImage controllerIMG;
  PImage logoIMG;
  PImage playIMG;
  PImage pauseIMG;
  PImage previousIMG;
  PImage rewindIMG;
  PImage fastforwardIMG;
  PImage skipIMG;
  PImage recordIMG;
  PImage jsIMG;
  PImage settingsIMG;

  PImage timelineIMG;

  PImage EditorIMG;
  PImage play2IMG;
  PImage replayIMG;
  PImage effectsIMG;
  PImage sampleIMG;
  PImage knobIMG;
  PImage addSampleIMG;
  PImage EL_albumIMG;
  PImage ER_albumIMG;

  PImage mixerIMG;
  PImage mixerButtonIMG;
  PImage muteIMG;
  PImage mute_IMG;
  PImage masterIMG;
  
  PImage browseIMG;
  PImage instrumentsIMG;
  PImage browseButtonIMG;
  PImage instrumentsButtonIMG;
  PImage browseButton_IMG;
  PImage instrumentsButton_IMG;
  
  ImageZone MainZone;
  ImageZone ControllerZone;
  ImageZone TimelineZone;
  ImageZone EditorLeftZone;
  ImageZone EditorRightZone;
  ImageZone MixerZone;
  ImageZone BrowseTabZone;
  ImageZone InstrumentsTabZone;

  //controller
  ImageZone LogoZone;
  ImageZone PlayZone;
  ImageZone PauseZone;
  ImageZone PreviousZone;
  ImageZone RewindZone;
  ImageZone FastforwardZone;
  ImageZone SkipZone;
  ImageZone RecordZone;
  ImageZone JamsessionZone;
  ImageZone SettingsZone;

  //timeline
  Zone WaveZone;
  Zone MidiZone;
  
  //Editor Left;
  ImageZone EL_AlbumZone;
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
  
  //Editor Right
  ImageZone ER_AlbumZone;
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
  
  //Mixer
  ImageZone MixerButtonZone;
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
  
  //tab
  ImageZone BrowseButtonZone;
  ImageZone InstrumentsButtonZone;
  
  public MainResources(){
  }

  public void init(){
    //INIT IMAGES
    backgroundIMG = loadImage("main/background.png");
    
    controllerIMG = loadImage("main/controller.png");
    logoIMG= loadImage("main/logo.png");
    playIMG= loadImage("main/play.png");
    pauseIMG= loadImage("main/pause.png");
    previousIMG= loadImage("main/previous.png");
    rewindIMG= loadImage("main/rewind.png");
    fastforwardIMG= loadImage("main/fastforward.png");
    skipIMG= loadImage("main/skip.png");
    recordIMG= loadImage("main/record.png");
    jsIMG= loadImage("main/js.png");
    settingsIMG= loadImage("main/settings.png");
    
    timelineIMG = loadImage("main/timeline.png");
    
    EditorIMG = loadImage("main/editor.png");
    play2IMG = loadImage("main/play2.png");
    replayIMG = loadImage("main/replay.png");
    effectsIMG = loadImage("main/effects.png");
    sampleIMG = loadImage("main/sampler.png");
    knobIMG = loadImage("main/knob.png");
    addSampleIMG = loadImage("main/addSample.png");
    EL_albumIMG = loadImage("main/el_album.png");
    ER_albumIMG = loadImage("main/er_album.png");

    mixerIMG = loadImage("main/mixer.png");
    mixerButtonIMG = loadImage("main/mixerButton.png");
    muteIMG = loadImage("main/mute.png");
    mute_IMG  = loadImage("main/mute_.png");
    masterIMG  = loadImage("main/knobL.png");

    browseIMG = loadImage("main/browse.png");
    instrumentsIMG = loadImage("main/instruments.png");
    browseButtonIMG = loadImage("main/browseButton.png");
    browseButton_IMG = loadImage("main/browseButton_.png");
    instrumentsButtonIMG = loadImage("main/instrumentsButton.png");
    instrumentsButton_IMG = loadImage("main/instrumentsButton_.png");
    
    MainZone = new ImageZone("MainZone", backgroundIMG, 0, 0, screenWidth, screenHeight);
    
    ControllerZone = new ImageZone("ControllerZone", controllerIMG,ControllerZoneX, ControllerZoneY, ControllerZoneW, ControllerZoneH);
    LogoZone = new ImageZone("LogoZone",logoIMG,4,5,59,49);
    PlayZone = new ImageZone("PlayZone",playIMG,318,20,19,24);
    PauseZone = new ImageZone("PauseZone",pauseIMG,361,20,20,24);
    PreviousZone = new ImageZone("PreviousZone",previousIMG,407,20,28,25);
    RewindZone = new ImageZone("RewindZone",rewindIMG,462,20,39,25);
    FastforwardZone = new ImageZone("FastforwardZone",fastforwardIMG,524,20,39,24);
    SkipZone = new ImageZone("SkipZone",skipIMG,590,20,28,24);
    RecordZone = new ImageZone("RecordZone",recordIMG,640,4,47,47);
    JamsessionZone = new ImageZone("JamsessionZone",jsIMG,780,0,64,64);
    SettingsZone = new ImageZone("SettingsZone",settingsIMG, 911,9,75,36);

    //timeline
    TimelineZone = new ImageZone("TimelineZone",timelineIMG, 32,80,960,92);
    WaveZone = new Zone("WaveZone",0,0,0,0);
    MidiZone = new Zone("MidiZone",0,0,0,0);

    //Editor Left
    EditorLeftZone = new ImageZone("EditorLeftZone",EditorIMG,34,187,344,312);
    EL_AlbumZone = new ImageZone("EL_AlbumZone",EL_albumIMG,5,5,52,56);
    EL_TrackNameZone = new Zone("EL_TrackNameZone",0,0,0,0);
    EL_PlayZone = new ImageZone("EL_PlayZone",play2IMG,225,20,28,28);
    EL_PauseZone = new ImageZone("EL_PauseZone",pauseIMG,271,21,20,24);
    EL_ReplayZone = new ImageZone("EL_ReplayZone",replayIMG,308,22,21,24);
    EL_WaveZone = new Zone("EL_WaveZone",0,0,0,0);
    EL_EffectsZone = new ImageZone("EL_EffectsZone",effectsIMG,53,131,68,23);
    EL_EffectsKnobZone = new ImageZone("EL_EffectsKnobZone",knobIMG,124,118,49,49);
    EL_SamplerZone = new ImageZone("EL_SamplerZone",sampleIMG,196,131,68,23);
    EL_SamperKnobZone = new ImageZone("EL_SamperKnobZone",knobIMG,275,118,49,49);
    EL_AddSampleZone = new ImageZone("EL_AddSampleZone",addSampleIMG,113,229,114,62);
  
    //Editor Right
    EditorRightZone = new ImageZone("EditorRightZone",EditorIMG,648,187,344,312);
    ER_AlbumZone = new ImageZone("ER_AlbumZone",ER_albumIMG,5,5,52,56);
    ER_TrackNameZone = new Zone("ER_TrackNameZone",0,0,0,0);
    ER_PlayZone = new ImageZone("ER_PlayZone",play2IMG,225,20,28,28);
    ER_PauseZone = new ImageZone("ER_PauseZone",pauseIMG,271,21,20,24);
    ER_ReplayZone = new ImageZone("ER_ReplayZone",replayIMG,308,22,21,24);
    ER_WaveZone = new Zone("ER_WaveZone",0,0,0,0);
    ER_EffectsZone = new ImageZone("ER_EffectsZone",effectsIMG,53,131,68,23);
    ER_EffectsKnobZone = new ImageZone("ER_EffectsKnobZone",knobIMG,124,118,49,49);
    ER_SamplerZone = new ImageZone("ER_SamplerZone",sampleIMG,196,131,68,23);
    ER_SamperKnobZone = new ImageZone("ER_SamperKnobZone",knobIMG,275,118,49,49);
    ER_AddSampleZone = new ImageZone("ER_AddSampleZone",addSampleIMG,113,229,114,62);

    //Mixer
    MixerZone = new ImageZone("MixerZone",mixerIMG,402,187,223,312);  
    MixerButtonZone = new ImageZone("MixerButtonZone",mixerButtonIMG,81,9,64,24);  
    MasterZone= new ImageZone("MasterZone",masterIMG,86,65,47,47);  
    L_MuteZone= new ImageZone("L_MuteZone",muteIMG,18,9,57,25);  
    L_GainZone= new ImageZone("L_GainZone",knobIMG,9,50,49,49);  
    L_HighZone= new ImageZone("L_HighZone",knobIMG,9,119,49,49);  
    L_MedZone= new ImageZone("L_MedZone",knobIMG,9,169,49,49);  
    L_LowZone= new ImageZone("L_LowZone",knobIMG,9,217,49,49);  
    R_MuteZone= new ImageZone("R_MuteZone",muteIMG,151,9,57,25);  
    R_GainZone= new ImageZone("R_GainZone",knobIMG,158,50,49,49);  
    R_HighZone= new ImageZone("R_HighZone",knobIMG,158,119,49,49);  
    R_MedZone= new ImageZone("R_MedZone",knobIMG,158,169,49,49);  
    R_LowZone= new ImageZone("R_LowZone",knobIMG,158,217,49,49);  
    
    //tab
    BrowseTabZone = new ImageZone("BrowseTabZone",browseIMG,15,533,988,230);
    InstrumentsTabZone = new ImageZone("InstrumentsTabZone",instrumentsIMG,16,533,988,230);
    
    BrowseButtonZone = new ImageZone("BrowseButtonZone",browseButtonIMG,412,509,90,20);
    InstrumentsButtonZone = new ImageZone("InstrumentsButtonZone",instrumentsButtonIMG,513,509,90,20);
  } 
}


