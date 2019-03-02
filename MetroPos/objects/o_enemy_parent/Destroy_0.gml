/// @description 
var solid_ = instance_place(x, y + 1, o_solid);
if solid_ {
	with (solid_) {
		var y_ = y;
	}
	instance_create_layer(x,y_,"Instances", o_blood);
}