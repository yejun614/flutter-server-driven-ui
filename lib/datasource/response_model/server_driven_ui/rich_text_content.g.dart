// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_text_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RichTextContent _$RichTextContentFromJson(Map<String, dynamic> json) =>
    RichTextContent(
      viewType:
          $enumDecodeNullable(_$RichTextViewTypeEnumMap, json['viewType']) ??
              RichTextViewType.unknownViewType,
      content: json['content'],
    );

Map<String, dynamic> _$RichTextContentToJson(RichTextContent instance) =>
    <String, dynamic>{
      'viewType': _$RichTextViewTypeEnumMap[instance.viewType]!,
      'content': instance.content,
    };

const _$RichTextViewTypeEnumMap = {
  RichTextViewType.aViewType: 'aViewType',
  RichTextViewType.bViewType: 'bViewType',
  RichTextViewType.richViewType: 'richViewType',
  RichTextViewType.unknownViewType: 'unknownViewType',
};
