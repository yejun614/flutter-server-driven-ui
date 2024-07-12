import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter/server_driven_ui_adapter.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter/server_driven_ui_rich_text_adapter.dart';

class AdapterController {
  late final ServerDrivenUIAdapter _defaultAdapter;
  late final ServerDrivenUIRichTextAdapter _richTextAdapter;

  AdapterController() {
    _defaultAdapter = ServerDrivenUIAdapter();
    _richTextAdapter = ServerDrivenUIRichTextAdapter();
  }

  List<Widget> convert(dynamic contentList) {
    // TODO: 구현 필요
    throw Exception("error");
    return [];
  }
}
