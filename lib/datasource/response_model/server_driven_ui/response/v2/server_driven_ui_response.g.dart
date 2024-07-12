// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_driven_ui_response_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerDrivenUIResponse _$ServerDrivenUIResponseFromJson(
        Map<String, dynamic> json) =>
    ServerDrivenUIResponse(
      screenName: json['screenName'] as String,
      contentList: (json['contents'] as List<dynamic>)
          .map((e) => ScreenContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServerDrivenUIResponseToJson(
        ServerDrivenUIResponse instance) =>
    <String, dynamic>{
      'screenName': instance.screenName,
      'contents': instance.contentList,
    };
