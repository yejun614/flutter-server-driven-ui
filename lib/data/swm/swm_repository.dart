import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/response/v2/server_driven_ui_response_v2.dart';
import 'package:flutter_server_driven_ui/datasource/swm/swm_datasource.dart';

import '../../di/di_setup.dart';

abstract class SwmRepository {
  Future<ServerDrivenUIV2Response> getSwmInformation(String url);
}

class SwmRepositoryImpl implements SwmRepository {
  final _dataSource = getIt<SwmDataSource>();

  @override
  Future<ServerDrivenUIV2Response> getSwmInformation(String url) async {
    final response = await _dataSource.getSwmInformation(url);
    return response;
  }
}
