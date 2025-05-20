/// obj_final_controller → Create
instance_create_layer(room_width/2, room_height/2, "Instances", obj_mengpo_final);

var lines = scr_load_txt("ending_intro.txt");
instance_create_layer(0,0,"GUI", obj_dialogueBox,
    { lines: lines, speaker: "Mengpo" });

state      = 0;       
dialog_cd  = 0;
