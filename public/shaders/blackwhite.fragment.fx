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
    float red = FragColor.r * 0.299;
    float green = FragColor.g * 0.587;
    float blue = FragColor.b * 0.114;
    float L = red + green + blue;
    FragColor.r = L;
    FragColor.g = L;
    FragColor.b = L;
}
