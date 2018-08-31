if !variable_instance_exists(other,"hit_flag") exit;
if other.twice_hit_flag exit;
if twice_attack_flag {
other.twice_hit_flag = true;
other.alarm[2] = other.hit_time;
other.health_ -= 1;
instance_create_depth(other.x, other.y-30, -2, o_player_sword_spark);
}
if other.hit_flag exit;
other.hit_flag = true;
other.alarm[2] = other.hit_time;
other.health_ -= 2.5;
instance_create_depth(other.x, other.y-30, -2, o_player_sword_hit);

