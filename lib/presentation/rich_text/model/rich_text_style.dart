class RichTextStyle {
  static const int underline = 1;
  static const int bold = 2;
  static const int strike = 4;
  static const int italic = 8;

  final List<int>? styles;
  int _styles = 0;

  RichTextStyle({this.styles}) {
    if (styles != null) {
      for (int index = 0; index < styles!.length; index++) {
        _styles |= styles![index];
      }
    }
  }

  bool getStyle(int check) {
    return _styles & check != 0;
  }
}
