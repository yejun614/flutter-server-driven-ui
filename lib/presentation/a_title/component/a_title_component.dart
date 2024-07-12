import 'package:flutter/material.dart';

class ATitleComponent extends StatelessWidget {
  final String title;
  final String? iconUrl;

  const ATitleComponent({
    super.key,
    required this.title,
    this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        if (iconUrl != null)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.network(
              iconUrl!,
              width: 64,
              height: 64,
            ),
          ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
