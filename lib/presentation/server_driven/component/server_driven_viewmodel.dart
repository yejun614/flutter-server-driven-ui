import 'package:flutter_server_driven_ui/data/accommodation/accommodation_repository.dart';
import 'package:flutter_server_driven_ui/di/di_setup.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/adapter_controller/adapter_controller.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/model/server_driven_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'server_driven_viewmodel.g.dart';

@riverpod
class ServerDrivenViewModel extends _$ServerDrivenViewModel {
  final _repository = getIt<AccommodationRepository>();
  final _adaptor = getIt<AdapterController>();

  @override
  ServerDrivenState build() {
    return ServerDrivenState(children: []);
  }

  void setUrl(String url) async {
    try {
      final response = await _repository.getAccommodationInformation(url);
      state.children = _adaptor.convert(response.contentList);
    } catch (error) {
      state.children = [];
      state.error = error.toString();
    }
    state = ServerDrivenState.clone(state);
  }
}
