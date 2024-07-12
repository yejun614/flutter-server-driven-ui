import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/rich_text/model/rich_text_style.dart';

class RichTextComponent extends TextSpan {
  final String text;
  final double? fontSize;
  final Color? background;
  final Color? textColor;
  final RichTextStyle? textStyle;

  RichTextComponent({
    this.text = "",
    this.fontSize,
    this.background,
    this.textColor,
    this.textStyle,
  }) : super(
          text: text,
          style: TextStyle(
              fontSize: fontSize,
              backgroundColor: background,
              color: textColor,
              fontStyle:
                  textStyle != null && textStyle.getStyle(RichTextStyle.italic)
                      ? FontStyle.italic
                      : FontStyle.normal,
              fontWeight:
                  textStyle != null && textStyle.getStyle(RichTextStyle.bold)
                      ? FontWeight.bold
                      : FontWeight.normal,
              decoration: TextDecoration.combine([
                textStyle != null && textStyle.getStyle(RichTextStyle.underline)
                    ? TextDecoration.underline
                    : TextDecoration.none,
                textStyle != null && textStyle.getStyle(RichTextStyle.strike)
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ])),
        );
}
