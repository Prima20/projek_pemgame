#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;
layout (location = 2) in vec2 texCoord;

uniform float n = 1.0f;
uniform int frameIndex = 0;
uniform mat4 model;
uniform mat4 projection;

out vec3 ourColor;
out vec2 TexCoord;

void main()
{
	gl_Position = projection * model * vec4(position, 1.0f);
	ourColor = color;
	// We do not need to swap the y-axis by substracing our coordinates from 1. Because we match y-axis on the orthographic projection with y-axis on the image.
	TexCoord = vec2(texCoord.x, texCoord.y);
}