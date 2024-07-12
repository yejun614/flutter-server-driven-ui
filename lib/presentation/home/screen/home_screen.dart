import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/presentation/home/component/home_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeComponent(),
    );
  }
}
