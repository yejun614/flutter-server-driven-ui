import 'package:flutter_server_driven_ui/presentation/my_app/model/my_app_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "my_app_viewmodel.g.dart";

@riverpod
class MyAppViewModel extends _$MyAppViewModel {
  @override
  MyAppState build() {
    return MyAppState();
  }

  void increase() {
    state.count++;
  }
}
