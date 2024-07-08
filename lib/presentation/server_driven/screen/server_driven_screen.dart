import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/component/server_driven_component.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ServerDrivenScreen extends HookConsumerWidget {
  final String url;

  const ServerDrivenScreen({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ServerDrivenComponent(
        url: url,
      ),
    );
  }
}
