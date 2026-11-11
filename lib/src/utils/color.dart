import 'dart:ui' show Color;

// TODO: Replace this helper with Color.toARGB32() when the minimum Flutter
// version is raised to 3.29 or later.
int colorToArgb32(Color color) {
  return (_toByte(color.a) << 24) |
      (_toByte(color.r) << 16) |
      (_toByte(color.g) << 8) |
      _toByte(color.b);
}

int _toByte(double channel) => (channel * 255.0).round() & 0xff;
