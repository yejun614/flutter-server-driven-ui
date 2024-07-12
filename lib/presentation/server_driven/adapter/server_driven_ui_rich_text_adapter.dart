import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/content/v2/screen_content_v2.dart';
import 'package:flutter_server_driven_ui/presentation/a_title/component/a_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/b_title/component/b_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich/component/rich_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_image/component/rich_image_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_text/component/rich_text_component.dart';
import 'package:flutter_server_driven_ui/presentation/rich_text/model/rich_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/model/server_driven_ui_model.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/type/rich_text_view_type.dart';

// 서버에서 받은 데이터를 화면에 표시할 수 있는 위젯으로 변환
class ServerDrivenUIRichTextAdapter {
  static const Map<String, int> _colors = {};

  List<Widget> convert(List<ScreenContentV2> contentList) {
    final List<Widget> serverDrivenWidgets = [];

    for (int index = 0; index < contentList.length; index++) {
      final content = contentList[index];

      switch (content.richTextViewType) {
        case RichTextViewType.aViewType:
          final aViewTypeModel = AViewTypeModel.fromJson(content.content);
          serverDrivenWidgets.add(
            ATitleComponent(
              title: aViewTypeModel.title,
              iconUrl: aViewTypeModel.iconUrl,
            ),
          );
          break;

        case RichTextViewType.bViewType:
          final bViewTypeModel = BViewTypeModel.fromJson(content.content);
          serverDrivenWidgets.add(
            BTitleComponent(
              title: bViewTypeModel.title,
            ),
          );
          break;

        case RichTextViewType.richViewType:
          final richViewTypeModel = RichViewTypeModel.fromJson(content.content);
          serverDrivenWidgets.add(
            RichComponent(
              children: [
                RichTextComponent(text: richViewTypeModel.title),
                ...(richViewTypeModel.richText.map((item) {
                  if (item.text != null) {
                    final text = item.text!;
                    return RichTextComponent(
                      text: text.text,
                      fontSize: text.fontSize,
                      background: Color(_toColor(text.background)),
                      textColor: Color(_toColor(text.textColor)),
                      textStyle: RichTextStyle(
                        styles: text.textStyle
                            .map((style) => _toTextStyle(style))
                            .toList(),
                      ),
                    );
                  } else if (item.image != null) {
                    final image = item.image!;
                    return RichImageComponent(
                      src: image.url,
                      width: image.width,
                      height: image.height,
                    );
                  } else {
                    throw Exception("Rich Text Parse Error");
                  }
                }).toList())
              ],
            ),
          );
          break;

        default:
          throw Exception('Unknown RichTextViewType');
      }
    }

    return serverDrivenWidgets;
  }

  int _toColor(String text) {
    return _colors[text] ?? 0x00000000;
  }

  int _toTextStyle(String text) {
    if (text == "underline") {
      return RichTextStyle.underline;
    } else if (text == "bold") {
      return RichTextStyle.bold;
    } else if (text == "strike") {
      return RichTextStyle.strike;
    } else if (text == "italic") {
      return RichTextStyle.italic;
    } else {
      return 0; // NULL
    }
  }
}
