#version 300 es
precision mediump float;

in vec2 outTex;
uniform sampler2D x;
uniform float alpha;
out vec4 outColor;

void main() {
  vec4 v = texture(x, vec2(outTex.x, outTex.y));
  outColor = max(v, 0.0) + alpha * (exp(min(v, 0.0)) - 1.0);
}
