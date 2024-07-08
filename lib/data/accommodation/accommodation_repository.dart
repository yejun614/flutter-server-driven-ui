import 'package:flutter_server_driven_ui/datasource/accommodation/accommodation_datasource.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/server_driven_ui_response.dart';

import '../../di/di_setup.dart';

abstract class AccommodationRepository {
  Future<ServerDrivenUIResponse> getAccommodationInformation(String url);
}

class AccommodationRepositoryImpl implements AccommodationRepository {
  final _dataSource = getIt<AccommodationDataSource>();

  @override
  Future<ServerDrivenUIResponse> getAccommodationInformation(String url) async {
    final response = await _dataSource.getAccommodationInformation(url);
    return response;
  }
}
