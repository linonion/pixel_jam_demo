/// obj_final_controller → Step
if (dialog_cd > 0) dialog_cd--;

switch (state)
{
    // 等 Intro 对白结束
    case 0:
        if (!instance_exists(obj_dialogueBox) && dialog_cd==0)
        {
            // 删除孟婆立像
            with (obj_mengpo_final) instance_destroy();

            
            instance_create_layer(200, 62,
                                  "Instances", obj_boss_final);

            state     = 1;
        }
        break;

    // 监听 BOSS 是否被击杀
    case 1:
        if (!instance_exists(obj_boss_final))
        {
            // TODO: 通关演出 / 回主菜单
            show_debug_message("游戏通关！");
            state = 2;
        }
        break;
}
