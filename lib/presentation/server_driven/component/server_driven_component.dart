import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/component/server_driven_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ServerDrivenComponent extends HookConsumerWidget {
  final String url;

  const ServerDrivenComponent({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(serverDrivenViewModelProvider);
    final notifier = ref.watch(serverDrivenViewModelProvider.notifier);

    useEffect(() {
      notifier.setUrl(url);
      return null;
    }, []);

    return Column(
      children: viewModel.children,
    );
  }
}
