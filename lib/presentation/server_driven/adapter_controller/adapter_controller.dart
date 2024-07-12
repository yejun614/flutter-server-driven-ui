import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/content/v1/screen_content_v1.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/content/v2/screen_content_v2.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter/server_driven_ui_adapter.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter/server_driven_ui_rich_text_adapter.dart';

class AdapterController {
  late final ServerDrivenUIAdapter _defaultAdapter;
  late final ServerDrivenUIRichTextAdapter _richTextAdapter;

  AdapterController() {
    _defaultAdapter = ServerDrivenUIAdapter();
    _richTextAdapter = ServerDrivenUIRichTextAdapter();
  }
  List<Widget> convert(List<dynamic> contentList) {
    if (contentList is List<ScreenContent>) {
      return _defaultAdapter.convert(contentList);
    }
    if (contentList is List<ScreenContentV2>) {
      return _richTextAdapter.convert(contentList);
    }

    return [];
  }
}
