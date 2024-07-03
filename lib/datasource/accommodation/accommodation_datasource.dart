import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/server_driven_ui_response.dart';

abstract class AccommodationDataSource {
  Future<ServerDrivenUIResponse> getAccommodationInformation();
}
