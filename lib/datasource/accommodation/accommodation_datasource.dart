import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/response/v1/server_driven_ui_response_v1.dart';

abstract class AccommodationDataSource {
  Future<ServerDrivenUIResponse> getAccommodationInformation(String url);
}

class AccommodationDataSourceImpl implements AccommodationDataSource {
  @override
  Future<ServerDrivenUIResponse> getAccommodationInformation(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == HttpStatus.ok) {
      // FIXME:
      // final body = utf8.decode(response.bodyBytes) as Map<String, dynamic>;
      final body = jsonDecode(response.body);
      return ServerDrivenUIResponse.fromJson(body);
    } else {
      throw Exception('$url 응답 오류: ${response.statusCode}');
    }
  }
}
