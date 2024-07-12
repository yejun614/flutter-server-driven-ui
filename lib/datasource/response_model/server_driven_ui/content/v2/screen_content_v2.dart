import 'package:flutter_server_driven_ui/presentation/server_driven/type/rich_text_view_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'screen_content_v2.g.dart';

@JsonSerializable()
class ScreenContentV2 {
  @JsonKey(
    name: 'viewType',
    fromJson: _sectionComponentTypeFromJson,
    toJson: _sectionComponentTypeToJson,
  )
  final RichTextViewType richTextViewType;

  @JsonKey(name: 'content')
  final Map<String, dynamic> content;

  ScreenContentV2({
    required this.richTextViewType,
    required this.content,
  });

  factory ScreenContentV2.fromJson(Map<String, dynamic> json) =>
      _$ScreenContentV2FromJson(json);

  Map<String, dynamic> toJson() => _$ScreenContentV2ToJson(this);

  static RichTextViewType _sectionComponentTypeFromJson(String name) {
    return RichTextViewType.fromName(name) ?? RichTextViewType.unknownViewType;
  }

  static String _sectionComponentTypeToJson(RichTextViewType type) {
    return type.name;
  }
}
