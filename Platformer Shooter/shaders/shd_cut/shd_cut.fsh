//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D s_light_sampler;
uniform sampler2D s_back_sampler;
void main()
{
	float u_fAmbient = 0.5;
    gl_FragColor = texture2D( s_light_sampler, v_vTexcoord ) * (u_fAmbient+texture2D( s_back_sampler, v_vTexcoord ));
}
