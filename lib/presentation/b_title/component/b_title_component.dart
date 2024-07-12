import 'package:flutter_server_driven_ui/presentation/a_title/component/a_title_component.dart';

class BTitleComponent extends ATitleComponent {
  final String title;

  const BTitleComponent({
    super.key,
    required this.title,
  }) : super(title: title);
}
