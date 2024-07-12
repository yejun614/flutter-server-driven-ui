import 'package:flutter/material.dart';

class ServerDrivenState {
  List<Widget> children;
  String? error;

  ServerDrivenState({
    required this.children,
    this.error,
  });

  ServerDrivenState.clone(ServerDrivenState state)
      : this(
          children: state.children,
          error: state.error,
        );
}
