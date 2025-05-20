event_inherited();              // 若不用闪白可删

// 固定站位
x = room_width * 0.5;
y = room_height * 0.5;

// 2 秒倒计时
if (--life_timer <= 0)
{
    // 停背景音乐（若有）
    if (variable_global_exists("current_music_id") && global.current_music_id != -1)
        audio_stop_sound(global.current_music_id);

    // 播终幕对白
    instance_create_layer(0,0,"GUI", obj_dialogueBox,
        { lines: scr_load_txt("fin_hit.txt"),
          speaker: "？？？",
          target_room: rm_end });   // 或 rm_hub / rm_title

    instance_destroy();    // 删除自己 → 控制器检测不到 Boss 即通关
}
