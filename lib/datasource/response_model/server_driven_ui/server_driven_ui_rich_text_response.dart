import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/rich_text_content.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_driven_ui_rich_text_response.g.dart';

@JsonSerializable()
class ServerDrivenUIRichTextResponse {
  final String screenName;
  final List<RichTextContent> contents;

  ServerDrivenUIRichTextResponse({
    this.screenName = '',
    contents,
  }) : contents = contents ?? <RichTextContent>[];

  factory ServerDrivenUIRichTextResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerDrivenUIRichTextResponseFromJson(json);
}
