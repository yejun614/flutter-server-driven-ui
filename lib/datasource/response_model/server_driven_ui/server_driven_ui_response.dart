import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/screen_content.dart';

part 'server_driven_ui_response.g.dart';

@JsonSerializable()
class ServerDrivenUIResponse {
  @JsonKey(name: 'screenName')
  final String screenName;

  @JsonKey(name: 'contents')
  final List<ScreenContent> contentList;

  ServerDrivenUIResponse({
    required this.screenName,
    required this.contentList,
  });

  factory ServerDrivenUIResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerDrivenUIResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerDrivenUIResponseToJson(this);
}
