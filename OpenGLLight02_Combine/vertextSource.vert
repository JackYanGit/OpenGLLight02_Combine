#version 330 core
layout(location=15) in vec3 aPos;
//layout(location=1) in vec3 aColor;
//layout(location=7) in vec2 aTextCoord;
layout(location=9) in vec3 aNormal;
//out vec4 vertexColor;
//out vec2 TextCoord;

uniform mat4 modelMat;
uniform mat4 viewMat;
uniform mat4 projMat;

out vec3 FragPos;
out vec3 Normal;
void main(){ 
gl_Position = projMat*viewMat*modelMat * vec4(aPos,1.0);
Normal = mat3(transpose(inverse(modelMat)))*aNormal;
FragPos = (modelMat*vec4(aPos,1.0)).xyz;
//vertexColor = vec4(aColor.x,aColor.y,aColor.z,1.0);
//TextCoord = aTextCoord;
}