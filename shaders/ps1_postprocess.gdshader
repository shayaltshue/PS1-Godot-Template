shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, repeat_disable, filter_nearest;
uniform vec2 viewport_size = vec2(640,480);
uniform vec2 virtual_resolution = vec2(320,240);

const float ps1_dithering[16] = float[16](
	-4.0, 0.0, -3.0, 1.0,
	2.0, -2.0, 3.0, -1.0,
	-3.0, 1.0, -4.0, 0.0,
	3.0, -1.0, 2.0, -2.0
);

void fragment() {
	vec3 screen_color = texture(screen_texture, UV).rgb;
	vec3 quantized_color = floor((screen_color * 255.0) / 8.0) / 31.0;
	
	vec2 virtual_pos = floor(FRAGCOORD.xy * (virtual_resolution / viewport_size));
	int x = int(mod(virtual_pos.x, 4.0)) % 4;
	int y = int(mod(virtual_pos.y, 4.0)) % 4;
	int index = y * 4 + x;
	
	float dither_offset = (ps1_dithering[index] / 8.0);
		
	COLOR = vec4(quantized_color, 1);
}
	