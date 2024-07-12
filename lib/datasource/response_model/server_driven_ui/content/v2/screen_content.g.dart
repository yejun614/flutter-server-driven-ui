// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_content_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenContentV2 _$ScreenContentFromJson(Map<String, dynamic> json) =>
    ScreenContentV2(
      id: json['id'] as String? ?? '',
      sectionComponentType: ScreenContentV2._sectionComponentTypeFromJson(
          json['sectionComponentType'] as String),
      section: json['section'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ScreenContentToJson(ScreenContentV2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sectionComponentType': ScreenContentV2._sectionComponentTypeToJson(
          instance.richTextViewType),
      'section': instance.content,
    };
