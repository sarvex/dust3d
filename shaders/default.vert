attribute vec4 vertex;
attribute vec3 normal;
attribute vec3 color;
attribute vec2 texCoord;
attribute float metalness;
attribute float roughness;
varying vec3 vert;
varying vec3 vertNormal;
varying vec3 vertColor;
varying vec2 vertTexCoord;
varying float vertMetalness;
varying float vertRoughness;
varying vec3 vertView;
uniform mat4 projMatrix;
uniform mat4 mvMatrix;
uniform mat3 normalMatrix;
void main() 
{
    vert = vertex.xyz;
    vertNormal = normalMatrix * normal;
    vertColor = color;
    vertTexCoord = texCoord;
    gl_Position = projMatrix * mvMatrix * vertex;
}