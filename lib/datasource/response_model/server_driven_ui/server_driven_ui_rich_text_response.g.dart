// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_driven_ui_rich_text_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerDrivenUIRichTextResponse _$ServerDrivenUIRichTextResponseFromJson(
        Map<String, dynamic> json) =>
    ServerDrivenUIRichTextResponse(
      screenName: json['screenName'] as String? ?? '',
      contents: json['contents'],
    );

Map<String, dynamic> _$ServerDrivenUIRichTextResponseToJson(
        ServerDrivenUIRichTextResponse instance) =>
    <String, dynamic>{
      'screenName': instance.screenName,
      'contents': instance.contents,
    };
