///@description 
///@param percentIn10
//0为不发生，10为绝对发生
var p_ = argument0;
var chance_ = random_range(0, 10);
if chance_ < p_
	return true;
else 
	return false;
