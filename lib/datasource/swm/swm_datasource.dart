import 'dart:convert';
import 'dart:io';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/response/v2/server_driven_ui_response_v2.dart';
import 'package:http/http.dart' as http;

abstract class SwmDataSource {
  Future<ServerDrivenUIV2Response> getSwmInformation(String url);
}

class SwmDataSourceImpl implements SwmDataSource {
  @override
  Future<ServerDrivenUIV2Response> getSwmInformation(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == HttpStatus.ok) {
      final body = jsonDecode(response.body);
      return ServerDrivenUIV2RootResponse.fromJson(body).responseData;
    } else {
      throw Exception('$url 응답 오류: ${response.statusCode}');
    }
  }
}
