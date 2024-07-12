// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_driven_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AViewTypeModel _$AViewTypeModelFromJson(Map<String, dynamic> json) =>
    AViewTypeModel(
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$AViewTypeModelToJson(AViewTypeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

BViewTypeModel _$BViewTypeModelFromJson(Map<String, dynamic> json) =>
    BViewTypeModel(
      title: json['title'] as String? ?? '',
      iconUrl: json['iconUrl'] as String? ?? '',
    );

Map<String, dynamic> _$BViewTypeModelToJson(BViewTypeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'iconUrl': instance.iconUrl,
    };

RichViewTypeModel _$RichViewTypeModelFromJson(Map<String, dynamic> json) =>
    RichViewTypeModel(
      title: json['title'] as String? ?? '',
      richText: (json['richText'] as List<dynamic>?)
          ?.map(
              (e) => RichTextComponentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RichViewTypeModelToJson(RichViewTypeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'richText': instance.richText,
    };

RichTextComponentModel _$RichTextComponentModelFromJson(
        Map<String, dynamic> json) =>
    RichTextComponentModel(
      text: json['text'] == null
          ? null
          : RichTextTextModel.fromJson(json['text'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : RichTextImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichTextComponentModelToJson(
        RichTextComponentModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };

RichTextTextModel _$RichTextTextModelFromJson(Map<String, dynamic> json) =>
    RichTextTextModel(
      text: json['text'] as String? ?? '',
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      background: json['background'] as String? ?? 'white',
      textColor: json['textColor'] as String? ?? 'black',
      textStyle: (json['textStyle'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RichTextTextModelToJson(RichTextTextModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'fontSize': instance.fontSize,
      'background': instance.background,
      'textColor': instance.textColor,
      'textStyle': instance.textStyle,
    };

RichTextImageModel _$RichTextImageModelFromJson(Map<String, dynamic> json) =>
    RichTextImageModel(
      url: json['url'] as String? ?? '',
      width: (json['width'] as num?)?.toDouble() ?? 24.0,
      height: (json['height'] as num?)?.toDouble() ?? 24.0,
    );

Map<String, dynamic> _$RichTextImageModelToJson(RichTextImageModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
