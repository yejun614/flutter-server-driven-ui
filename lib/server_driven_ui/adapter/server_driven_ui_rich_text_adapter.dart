// 서버에서 받은 데이터를 화면에 표시할 수 있는 위젯으로 변환
import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/rich_text_content.dart';
import 'package:flutter_server_driven_ui/presentation/a_title/component/a_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/b_title/component/b_title_component.dart';
import 'package:flutter_server_driven_ui/server_driven_ui/model/server_driven_ui_model.dart';
import 'package:flutter_server_driven_ui/server_driven_ui/rich_text_view_type.dart';

class ServerDrivenUIRichTextAdapter {
  static List<Widget> adapt(List<RichTextContent> contentList) {
    final List<Widget> serverDrivenWidgets = [];

    for (int index = 0; index < contentList.length; index++) {
      final content = contentList[index];

      switch (content.viewType) {
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
          print(richViewTypeModel);
          break;

        default:
          print('Unknown RichTextViewType');
          break;
      }
    }

    return serverDrivenWidgets;
  }
}
