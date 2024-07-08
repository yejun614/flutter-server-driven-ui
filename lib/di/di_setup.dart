import 'package:flutter_server_driven_ui/data/accommodation/accommodation_repository.dart';
import 'package:flutter_server_driven_ui/datasource/accommodation/accommodation_datasource.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<AccommodationDataSource>(
      AccommodationDataSourceImpl());
  getIt.registerSingleton<AccommodationRepository>(
      AccommodationRepositoryImpl());
}
