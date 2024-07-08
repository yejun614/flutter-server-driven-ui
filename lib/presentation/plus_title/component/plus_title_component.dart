import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/badge_group/component/badge_group_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_image.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_text.dart';

class PlusTitleComponent extends StatelessWidget {
  final PlusTitleImage? firstRowImage;
  final PlusTitleText titleText;
  final List<Widget> badges;
  final String description;

  const PlusTitleComponent({
    super.key,
    this.firstRowImage,
    required this.titleText,
    required this.badges,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (firstRowImage != null)
            Image.network(
              firstRowImage!.imgUrl,
              width: firstRowImage!.width,
              height: firstRowImage!.height,
            ),
          Text(
            titleText.text,
            style: TextStyle(
              fontSize: titleText.textSize,
              color: Color(titleText.textColor),
              fontWeight: titleText.textStyle & PlusTextStyle.bold != 0
                  ? FontWeight.bold
                  : FontWeight.normal,
              // fontWeight: FontWeight.bold,
              fontStyle: titleText.textStyle & PlusTextStyle.italic != 0
                  ? FontStyle.italic
                  : FontStyle.normal,
              decoration: titleText.textStyle & PlusTextStyle.strike != 0
                  ? TextDecoration.lineThrough
                  : null,
            ),
          ),
          const SizedBox(height: 6),
          BadgeGroupComponent(
            badges: badges,
          ),
          const SizedBox(height: 3),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
