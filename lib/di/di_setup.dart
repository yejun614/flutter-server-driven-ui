import 'package:flutter_server_driven_ui/data/accommodation/accommodation_repository.dart';
import 'package:flutter_server_driven_ui/data/swm/swm_repository.dart';
import 'package:flutter_server_driven_ui/datasource/accommodation/accommodation_datasource.dart';
import 'package:flutter_server_driven_ui/datasource/swm/swm_datasource.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter_controller/adapter_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<AccommodationDataSource>(
    AccommodationDataSourceImpl(),
  );
  getIt.registerSingleton<AccommodationRepository>(
    AccommodationRepositoryImpl(),
  );
  getIt.registerSingleton<SwmDataSource>(
    SwmDataSourceImpl(),
  );
  getIt.registerSingleton<SwmRepository>(SwmRepositoryImpl());
  getIt.registerSingleton<AdapterController>(
    AdapterController(),
  );
}
