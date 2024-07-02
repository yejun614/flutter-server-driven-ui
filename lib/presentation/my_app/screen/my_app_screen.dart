import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_server_driven_ui/presentation/my_app/component/my_app_component.dart';
import 'package:flutter_server_driven_ui/presentation/my_app/component/my_app_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyAppScreen extends HookConsumerWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(myAppViewModelProvider.notifier);
    final renderCount = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifier.increase();
          renderCount.value++;
        },
        child: const Icon(Icons.add),
      ),
      body: MyAppComponent(
        key: ValueKey(renderCount.value),
      ),
    );
  }
}
