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
    // Color
    vec2 scaledUV = ((model_uv * 2.0) - 1.0);
    float radius = length(scaledUV);
    vec2 offset = scaledUV * ((sin(radius * 30.0 - (time * 5.0)) + 0.5) / 60.0);
    FragColor = texture(image, model_uv + offset);
}
