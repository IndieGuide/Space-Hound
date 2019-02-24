//if point_distance(x,y,o_player.x,o_player.y) > 150 && !m_act_wait{
//	ds_queue_enqueue(m_act_queue,do_move); 
//	m_act_wait = true;
//}

if m_act_wait exit;




//发现玩家
if m_alert_level == enum_enemy_normal_alert_level.DANGER {  
	
	//发现玩家，增加攻击动作到任务队列
	ds_queue_clear(m_act_queue);
	with (m_view) {
		var is_here_solid = place_meeting(x, y, o_solid);
	}
	if is_here_solid {
		scr_in_mode_enemy_shoot_attack_run_away();
	} else {
		scr_in_mode_enemy_shoot_attack_run_away();
	}
}

if m_alert_level == enum_enemy_normal_alert_level.SEARCH {
	with o_player {
		var player_x = o_player.x;
		var player_y = o_player.y;
	}
	if abs(y - player_y) > 130 {
		scr_enemy_alert_level_change(enum_enemy_normal_alert_level.GUARD);
	}
	
	var dis = abs(player_x - x);
	var dir = player_x - x > 0? 0 : 2;
	var var_do_move_by_dir = [self, act_lib_move_dir, dir, dis, -1, 0];	
	ds_queue_enqueue(m_act_queue,var_do_move_by_dir);	
	scr_enemy_alert_level_change(enum_enemy_normal_alert_level.EMPTY);
	
}

//if m_alert_level == enum_enemy_normal_alert_level.DANGER && (m_act_state == enum_enemy_normal_state.IDOL) && collision_line(x, y, x + m_face*40, y, o_player, 0, 1) {
//	ds_queue_enqueue(m_act_queue,act_attack);
//}
//本平台自由巡逻
if m_alert_level == enum_enemy_normal_alert_level.GUARD {
	var solid_ = collision_point(x,y+2,o_solid, 0, 1);
	if solid_ {
		var dir = choose(0,2);
		with(solid_) {
			var solid_bbox_right = bbox_right;
			var solid_bbox_left = bbox_left;
		}
	
		if dir == 0 {
			var length = (solid_bbox_right - bbox_right);
		} else {
			var length = (bbox_left - solid_bbox_left);
		}
		var per = random(0.95);
		var dis = length * per;
	
		if dis >= 300
			dis = 300;
		if dis <= 60 && length > 60
			dis = 60;
		
		var time = random(4);
		var var_do_move_by_dir = [self, act_lib_move_dir, dir, dis, -1, 0];
		var var_do_stand = [self, act_lib_stand_time, time];
		ds_queue_enqueue(m_act_queue,var_do_move_by_dir);	
		ds_queue_enqueue(m_act_queue,var_do_stand);
		scr_enemy_alert_level_change(enum_enemy_normal_alert_level.EMPTY);
	}
}

if m_alert_level == enum_enemy_normal_alert_level.EMPTY {
	var is_queue_empty = ds_queue_empty(m_act_queue);
	if m_act_now == m_act_last && m_alert_level_last == enum_enemy_normal_alert_level.SEARCH{
		m_alert_level_last = enum_enemy_normal_alert_level.GUARD;
	}
	if is_queue_empty && m_act_now == noone {
		if m_alert_level_last == enum_enemy_normal_alert_level.GUARD 
			scr_enemy_alert_level_change(enum_enemy_normal_alert_level.GUARD);
		else if m_alert_level_last == enum_enemy_normal_alert_level.SEARCH
			scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
	}
}
