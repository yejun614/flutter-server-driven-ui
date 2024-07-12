import 'package:flutter_server_driven_ui/presentation/server_driven/type/rich_text_view_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rich_text_content.g.dart';

@JsonSerializable()
class RichTextContent {
  final RichTextViewType viewType;
  final Map<String, dynamic> content;

  RichTextContent({
    this.viewType = RichTextViewType.unknownViewType,
    content,
  }) : content = content ?? <String, dynamic>{};

  factory RichTextContent.fromJson(Map<String, dynamic> json) =>
      _$RichTextContentFromJson(json);
}
