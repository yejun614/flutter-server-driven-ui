import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_server_driven_ui/di/di_setup.dart';
import 'package:flutter_server_driven_ui/presentation/my_app/screen/my_app_screen.dart';
import 'package:flutter_server_driven_ui/presentation/test/screen/test_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const MyAppScreen()),
    GoRoute(path: "/test", builder: (context, state) => const TestScreen()),
  ],
);

void main() {
  configureDependencies();
  usePathUrlStrategy();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _router,
    );
  }
}
