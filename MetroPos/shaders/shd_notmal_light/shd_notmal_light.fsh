//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//uniform vec2 lightpos;
//uniform vec3 lightColor;
//uniform float screenHeight;
//uniform vec3 lightAttenuation;
uniform float radius;

uniform sampler2D texture;

void main()
{		
	vec2 lightpos= vec2(180,180);
	vec3 lightColor = vec3(1,1,1);
	float screenHeight = 720.0;
	vec3 lightAttenuation = vec3(1,1,1);
	vec2 pixel=v_vTexcoord.xy;		
	pixel.y=screenHeight-pixel.y;	
	vec2 aux=lightpos-pixel;
	float distance_=length(aux);
	float attenuation=1.0/(lightAttenuation.x+lightAttenuation.y*distance_+lightAttenuation.z*distance_*distance_);	
	vec4 color_=vec4(attenuation,attenuation,attenuation,1.0)*vec4(lightColor,1.0);	
	gl_FragColor = color_;//*texture2D(texture,gl_TexCoord[0].st);
}