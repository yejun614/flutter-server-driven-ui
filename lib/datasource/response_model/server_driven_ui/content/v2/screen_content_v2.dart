import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven_ui/server_driven_ui/section_component_type.dart';

part 'screen_content.g.dart';

@JsonSerializable()
class ScreenContentV2 {
  @JsonKey(
    name: 'sectionComponentType',
    fromJson: _sectionComponentTypeFromJson,
    toJson: _sectionComponentTypeToJson,
  )
  final SectionComponentType sectionComponentType;

  @JsonKey(name: 'section')
  final Map<String, dynamic> section;

  ScreenContentV2({
    required this.id,
    required this.sectionComponentType,
    required this.section,
  });

  factory ScreenContentV2.fromJson(Map<String, dynamic> json) =>
      _$ScreenContentFromJson(json);

  Map<String, dynamic> toJson() => _$ScreenContentToJson(this);

  static SectionComponentType _sectionComponentTypeFromJson(String name) {
    final type = SectionComponentType.fromName(name);

    if (type == null) {
      throw FormatException('잘못된 sectionComponentType 입니다 : $name');
    }
    return type;
  }

  static String _sectionComponentTypeToJson(SectionComponentType type) =>
      type.name;
}
