// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_content_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenContentV2 _$ScreenContentV2FromJson(Map<String, dynamic> json) =>
    ScreenContentV2(
      richTextViewType: ScreenContentV2._sectionComponentTypeFromJson(
          json['sectionComponentType'] as String),
      content: json['content'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ScreenContentV2ToJson(ScreenContentV2 instance) =>
    <String, dynamic>{
      'sectionComponentType': ScreenContentV2._sectionComponentTypeToJson(
          instance.richTextViewType),
      'content': instance.content,
    };
