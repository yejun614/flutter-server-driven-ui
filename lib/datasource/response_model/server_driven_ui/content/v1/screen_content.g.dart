// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_content_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenContent _$ScreenContentFromJson(Map<String, dynamic> json) =>
    ScreenContent(
      id: json['id'] as String? ?? '',
      sectionComponentType: ScreenContent._sectionComponentTypeFromJson(
          json['sectionComponentType'] as String),
      section: json['section'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ScreenContentToJson(ScreenContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sectionComponentType': ScreenContent._sectionComponentTypeToJson(
          instance.sectionComponentType),
      'section': instance.section,
    };
