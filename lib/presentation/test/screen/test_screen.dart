import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/a_title/component/a_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/b_title/component/b_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/badge/component/badge_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/component/plus_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_image.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_text.dart';
import 'package:flutter_server_driven_ui/presentation/title/component/title_component.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            const ATitleComponent(
              title: "This is A ViewType",
              iconUrl:
                  "https://avatars.githubusercontent.com/u/103282546?s=200&v=4",
            ),
            const BTitleComponent(
              title: "This is B ViewType",
            ),
          ],
        ),
      ),
    );
  }
}
