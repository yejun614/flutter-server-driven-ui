import 'package:flutter/material.dart';

class RichComponent extends StatelessWidget {
  final List<InlineSpan>? children;

  const RichComponent({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: children,
      ),
    );
  }
}
