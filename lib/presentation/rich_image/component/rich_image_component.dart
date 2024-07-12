import 'package:flutter/material.dart';

class RichImageComponent extends WidgetSpan {
  final String src;
  final double? width;
  final double? height;

  RichImageComponent({
    required this.src,
    this.width,
    this.height,
  }) : super(
          child: Image.network(
            src,
            width: width,
            height: height,
          ),
        );
}
