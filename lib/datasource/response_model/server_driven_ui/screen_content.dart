import 'package:flutter_server_driven_ui/server_driven_ui/section_component_type.dart';

const _id = 'id';
const _sectionComponentType = 'sectionComponentType';
const _section = 'section';

class ScreenContent {
  final String id;
  final SectionComponentType sectionComponentType;
  final Map<String, dynamic> section;

  ScreenContent({
    required this.id,
    required this.sectionComponentType,
    required this.section,
  });

  static ScreenContent fromJson(Map<String, dynamic> json) {
    final String id = json[_id] as String;
    final String sectionComponentTypeName =
        json[_sectionComponentType] as String;
    final SectionComponentType? sectionComponentType =
        SectionComponentType.fromName(sectionComponentTypeName);

    if (sectionComponentType == null) {
      throw FormatException(
          '잘못된 sectionComponentType 입니다 : $sectionComponentTypeName');
    }

    final Map<String, dynamic> section = json[_section] as Map<String, dynamic>;

    return ScreenContent(
      id: id,
      sectionComponentType: sectionComponentType,
      section: section,
    );
  }
}
