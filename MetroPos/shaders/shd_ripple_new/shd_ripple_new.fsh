varying vec2 v_texcoord;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;
uniform float circleRadius;// 0.25 0.4 0.6

void main()
{ 
	vec4 base_texture = texture2D(gm_BaseTexture, v_texcoord);
	
    vec2 uv = v_texcoord;
    uv.x *= (resolution.x/resolution.y);
    float centre_x = (mouse_pos.x / resolution.x) * (resolution.x/resolution.y);
    float centre_y = mouse_pos.y / resolution.y;
	
	float maxX = centre_x + circleRadius;
    float minX = centre_x - circleRadius;
    float maxY = centre_y + circleRadius;
    float minY = centre_y - circleRadius;
	vec4 colour = vec4(0.525,0.627,0.953,1);
	if( uv.x > minX && uv.x < maxX && uv.y > minY && uv.y < maxY)
    {
        float relX = uv.x - centre_x;
        float relY = uv.y - centre_y;
        float ang =  atan(relY, relX);
        float dist = sqrt(relX*relX + relY*relY);
		
	    if( dist <= circleRadius )
	    {
			vec4 colour = vec4(0.525,0.627,0.953,1);
	        gl_FragColor = base_texture;

	    }
	    else
	    {
	        vec2 dir = v_texcoord - vec2(0.5);
			float dist = distance(uv, vec2(centre_x,centre_y));
			vec2 offset = dir * (sin(dist * wave_amount - time * wave_speed)) / wave_distortion;
			gl_FragColor = texture2D(gm_BaseTexture,v_texcoord + offset)*colour;
			
	    }
	}
	else
    {
        vec2 dir = v_texcoord - vec2(0.5);
		float dist = distance(uv, vec2(centre_x,centre_y));
		vec2 offset = dir * (sin(dist * wave_amount - time * wave_speed)) / wave_distortion;
		gl_FragColor = texture2D(gm_BaseTexture,v_texcoord + offset)*colour;
    }  
	
	
  

}
