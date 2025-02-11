import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/a_title/component/a_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/b_title/component/b_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/badge/component/badge_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/component/plus_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_image.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_text.dart';
import 'package:flutter_server_driven_ui/presentation/rich/component/rich_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_image/component/rich_image_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_text/component/rich_text_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_text/model/rich_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/title/component/title_component.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              // ---------------------------------------------------
              // NOTE: Rich Text Component
              // ---------------------------------------------------
              RichComponent(
                children: [
                  RichTextComponent(
                    text: "hello",
                  ),
                  RichTextComponent(
                    text: "wow",
                    background: Colors.yellow,
                    textColor: Colors.red,
                    fontSize: 30,
                    textStyle: RichTextStyle(
                      styles: [
                        RichTextStyle.underline,
                        RichTextStyle.bold,
                        RichTextStyle.strike,
                        RichTextStyle.italic,
                      ],
                    ),
                  ),
                  RichImageComponent(
                    src: "https://img.icons8.com/?size=512&id=63684&format=png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              // ---------------------------------------------------
              // NOTE: Title Component
              // ---------------------------------------------------
              const TitleComponent(
                title: "Seamist Beach Cottage, Private Beach & Ocean Views",
                badges: [
                  BadgeComponent(
                    src:
                        "https://cdn-icons-png.flaticon.com/512/13921/13921167.png",
                    text: "4.79(99 reviews)",
                  ),
                ],
                description: "Bodega Bay, California, United States",
              ),
              // ---------------------------------------------------
              // NOTE: Plus Title Component
              // ---------------------------------------------------
              PlusTitleComponent(
                firstRowImage: PlusTitleImage(
                  imgUrl:
                      "https://cdn.pixabay.com/photo/2013/07/18/10/57/ribbon-163621_1280.jpg",
                  width: 120,
                  height: 30,
                ),
                titleText: PlusTitleText(
                  text: "Rancho Tranquillo Rustic ChicTent",
                  textSize: 30,
                  textColor: 0xFFFF0000, // NOTE: 0xAARRGGBB
                  textStyle: PlusTextStyle.bold, // NOTE: Bit masks
                ),
                badges: const [
                  BadgeComponent(
                    src:
                        "https://cdn-icons-png.flaticon.com/512/13921/13921167.png",
                    text: "4.79(99 reviews)",
                  ),
                  BadgeComponent(
                    src:
                        "https://cdn-icons-png.flaticon.com/512/190/190811.png",
                    text: "Superhost",
                  ),
                ],
                description: "San Juan Bautista, California, United States",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
