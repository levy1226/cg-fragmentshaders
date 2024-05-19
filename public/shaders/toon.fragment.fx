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
    FragColor = texture(image, model_uv);
    float red = roundEven(FragColor.r * 4.0) / 4.0;
    float green = roundEven(FragColor.g * 4.0) / 4.0;
    float blue = roundEven(FragColor.b * 4.0) / 4.0;
    FragColor.r = red;
    FragColor.g = green;
    FragColor.b = blue;
}
