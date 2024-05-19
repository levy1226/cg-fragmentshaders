#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    FragColor = texture(image, model_uv);
    vec2 center = vec2(0.5, 0.5);
    float distance = distance(model_uv, center);
    FragColor = vec4(distance + (0.3 * FragColor.r), distance + (0.3 * FragColor.g), distance + (0.3 * FragColor.b), 1.0);
    //blurs more the further from the center of the image
}
