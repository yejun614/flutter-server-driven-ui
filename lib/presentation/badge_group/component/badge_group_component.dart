import 'package:flutter/material.dart';

class BadgeGroupComponent extends StatelessWidget {
  final List<Widget> badges;

  const BadgeGroupComponent({
    super.key,
    required this.badges,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int index = 0; index < badges.length * 2 - 1; index++)
          index % 2 == 0
              ? badges[index ~/ 2]
              : Container(
                  width: 3,
                  height: 3,
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                ),
      ],
    );
  }
}
