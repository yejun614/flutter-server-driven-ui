const Map<String, int> _colors = {};

int text2Color(String text) {
  return _colors[text] ?? 0x00000000;
}
