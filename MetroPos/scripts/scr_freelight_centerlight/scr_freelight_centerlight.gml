var center_light = instance_create_layer(x,y,"LightLayer", object_index);
with(center_light) {
	light_xscale = other.light_xscale*0.4;
	light_yscale = other.light_yscale*0.4;
}