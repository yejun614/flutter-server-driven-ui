import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_server_driven_ui/di/di_setup.dart';
import 'package:flutter_server_driven_ui/presentation/home/screen/home_screen.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/screen/server_driven_screen.dart';
import 'package:flutter_server_driven_ui/presentation/test/screen/test_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const HomeScreen()),
    GoRoute(path: "/test", builder: (context, state) => const TestScreen()),
    GoRoute(
        path: "/view",
        builder: (context, state) => ServerDrivenScreen(
              url: state.uri.queryParameters["json"]!,
            )),
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
