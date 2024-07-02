import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/screen_content.dart';

const _screenName = 'screenName';
const _contents = 'contents';

class ServerDrivenUIResponse {
  final String screenName;
  final List<ScreenContent> contentList;

  ServerDrivenUIResponse({
    required this.screenName,
    required this.contentList,
  });

  static fromJson(Map<String, dynamic> json) {
    final screenName =
        json.containsKey(_screenName) ? json[_screenName] as String : '';
    final contents =
        json.containsKey(_contents) ? json[_contents] as List<dynamic> : [];

    List<ScreenContent> contentList = contents.map<ScreenContent>((element) {
      return ScreenContent.fromJson(element as Map<String, dynamic>);
    }).toList();

    return ServerDrivenUIResponse(
      screenName: screenName,
      contentList: contentList,
    );
  }
}
