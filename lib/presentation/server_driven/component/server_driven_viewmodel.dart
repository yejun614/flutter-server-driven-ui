import 'package:flutter_server_driven_ui/data/accommodation/accommodation_repository.dart';
import 'package:flutter_server_driven_ui/data/swm/swm_repository.dart';
import 'package:flutter_server_driven_ui/di/di_setup.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter_controller/adapter_controller.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/model/server_driven_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'server_driven_viewmodel.g.dart';

@riverpod
class ServerDrivenViewModel extends _$ServerDrivenViewModel {
  final _repositoryV1 = getIt<AccommodationRepository>();
  final _repositoryV2 = getIt<SwmRepository>();
  final _adaptor = getIt<AdapterController>();

  @override
  ServerDrivenState build() {
    return ServerDrivenState(children: []);
  }

  void setUrl(String url) async {
    try {
      final response = await _repositoryV1.getAccommodationInformation(url);
      state.children = _adaptor.convert(response.contentList);
    } catch (_) {
      try {
        final response = await _repositoryV2.getSwmInformation(url);
        state.children = _adaptor.convert(response.contentList);
      } catch (error) {
        state.error = error.toString();
      }
    } finally {
      state = ServerDrivenState.clone(state);
    }
  }
}
