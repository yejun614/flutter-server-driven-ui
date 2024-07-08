import 'package:flutter/material.dart';

class ServerDrivenState {
  List<Widget> children;

  ServerDrivenState({
    required this.children,
  });

  ServerDrivenState.clone(ServerDrivenState state)
      : this(children: state.children);
}
