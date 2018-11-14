///@description 得到敌人面向玩家的朝向
var xscale_;
if self.x>o_player.x{ 
	xscale_ = -1;
} else {
	xscale_ = 1;
}
return xscale_;