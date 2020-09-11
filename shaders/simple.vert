#version 430 core


in vec3 in_position;
in vec4 in_color;
out vec4 pass_color;
uniform mat4 u_WorldViewProj;

void main()
{
    gl_Position = vec4(in_position, 1.0f) * u_WorldViewProj;
    pass_color = in_color;
}