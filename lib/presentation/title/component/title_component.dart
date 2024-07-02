import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/component/plus_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_text.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final List<Widget> badges;
  final String description;

  const TitleComponent({
    super.key,
    required this.title,
    required this.badges,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return PlusTitleComponent(
      titleText: PlusTitleText(
        text: title,
        textSize: 30,
        textColor: 0xFF000000,
        textStyle: PlusTextStyle.bold,
      ),
      badges: badges,
      description: description,
    );
  }
}
