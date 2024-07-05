import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApiUrlComponent extends ConsumerWidget {
  final _textEditingController = TextEditingController();

  ApiUrlComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "API URL",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'API URL',
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {
                        final url = _textEditingController.text;
                        // 이동한 화면에서 url로 받아서 쓰면 됩니다.
                        context.go('/test', extra: {
                          'url': url,
                        });
                      },
                      child: const Text("Request"))
                ],
              ),
            )));
  }
}
