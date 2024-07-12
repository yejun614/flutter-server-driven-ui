import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/content/v2/screen_content_v2.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_driven_ui_response_v2.g.dart';

@JsonSerializable()
class ServerDrivenUIV2Response {
  @JsonKey(name: 'screenName')
  final String screenName;

  @JsonKey(name: 'contents')
  final List<ScreenContentV2> contentList;

  ServerDrivenUIV2Response({
    required this.screenName,
    required this.contentList,
  });

  factory ServerDrivenUIV2Response.fromJson(Map<String, dynamic> json) =>
      _$ServerDrivenUIV2ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerDrivenUIV2ResponseToJson(this);
}
