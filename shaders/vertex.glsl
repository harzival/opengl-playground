#version 330 core
layout(location = 0) in vec3 vertexPosition_modelspace;
// Notice that the "1" here equals the "1" in glVertexAttribPointer
layout(location = 1) in vec2 vertexUV;

// Output data ; will be interpolated for each fragment.
out vec2 UV;

uniform mat4 MVP;

void main() {
    // Output position of the vertex, in clip space : MVP * position
    gl_Position =  MVP * vec4(vertexPosition_modelspace,1);
    
    UV = vertexUV;
}