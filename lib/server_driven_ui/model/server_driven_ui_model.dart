import 'package:flutter/material.dart';

abstract class ServerDrivenUIBase {}

class ServerDrivenUILoading extends ServerDrivenUIBase {}

class ServerDrivenUIError extends ServerDrivenUIBase {
  final String message;

  ServerDrivenUIError(this.message);
}

class ServerDrivenUI extends ServerDrivenUIBase {
  final List<Widget> contents;

  ServerDrivenUI({
    required this.contents,
  });
}
