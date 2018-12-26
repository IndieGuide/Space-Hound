/// @description 注册ui控件
//应该有一种跟value绑定，显示为进度条的ui组件
//还有跟value绑定，值改变就播放切换动画，切换到一个新icon，显示新绑定的字符的组件
//提供value选择功能的组件（切换武器，进行制作，两种操作逻辑不同，所以得分开，但代码有相似性）
ui_ini();


ui_add(9, 822, o_pui_map);
ui_add(762, 958, o_pui_bar_hp);
ui_add(762, 992, o_pui_bar_san);
//ui_add(467, 914, o_pui_weapon_second);
ui_add(413, 935, o_pui_weapon);
//ui_add(598, 944, o_pui_gun_bullet);
//ui_add(598, 1017, o_pui_gun_bullet_coolmask);
ui_add(765, 1031, o_pui_bullet_ammo);
ui_add(1280, 935, o_pui_item);
ui_add(1450, 935, o_pui_drug);


ui_list_size = ds_list_size(ui_list);