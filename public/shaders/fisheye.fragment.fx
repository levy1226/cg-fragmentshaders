#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    vec2 scaledUV = ((model_uv * 2.0) - 1.0);
    float theta = atan(scaledUV.y, scaledUV.x);
    float radius = pow(length(scaledUV), 1.5);
    vec2 fishEyeUV = vec2(radius * cos(theta), radius * sin(theta));
    vec2 finalUV = 0.5 * (fishEyeUV + 1.0);
    FragColor = texture(image, finalUV);
}
