import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeComponent extends HookConsumerWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiUrlController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter the API URL",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: apiUrlController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'API URL',
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      final url = apiUrlController.text;
                      context.go(
                        Uri(
                          path: '/view',
                          queryParameters: {
                            "json": url,
                          },
                        ).toString(),
                      );
                    },
                    child: const Text("Request"),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              context.go("/test");
            },
            child: const Text("Go to test"),
          ),
        ],
      ),
    );
  }
}
