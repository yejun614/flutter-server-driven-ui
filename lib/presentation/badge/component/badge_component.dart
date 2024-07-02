import 'package:flutter/material.dart';

class BadgeComponent extends StatelessWidget {
  final String src;
  final String text;

  const BadgeComponent({
    super.key,
    required this.src,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: Image.network(src),
        ),
        const SizedBox(width: 3),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
