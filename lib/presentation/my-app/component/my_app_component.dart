import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/my-app/component/my_app_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyAppComponent extends HookConsumerWidget {
  const MyAppComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(myAppViewModelProvider);

    return Center(
      child: Text(
        "Count: ${viewModel.count}",
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
