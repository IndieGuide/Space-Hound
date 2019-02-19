enum enum_enemy_normal_state {
	IDOL			=	0,
	MOVE			=	1,
	JUMP			=	2,
	HURT			=	3,
	SQUART			=	4,
	DASH			=	5,
	ATTACK			=	6,
	INJURED			=	7,
	ANIME			=   8,
}
enum enum_enemy_normal_alert_level {
	SILENCE			=	0,
	GUARD			=	1,
	DANGER			=	2,
	SEARCH			=	3,
	EMPTY			=   4,
}

m_hp_max = 50;
m_san_max = 10;
m_hp = m_hp_max;
m_san = m_san_max;

m_attack_succeed_flag = false;

m_normal_damage = 10;

m_alert_level = enum_enemy_normal_alert_level.GUARD;
m_alert_level_last = noone;

m_invincible = false;