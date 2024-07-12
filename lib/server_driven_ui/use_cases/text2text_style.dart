import 'package:flutter_server_driven_ui/presentation/rich_text/model/rich_text_style.dart';

int text2TextStyle(String text) {
  if (text == "underline") {
    return RichTextStyle.underline;
  } else if (text == "bold") {
    return RichTextStyle.bold;
  } else if (text == "strike") {
    return RichTextStyle.strike;
  } else if (text == "italic") {
    return RichTextStyle.italic;
  } else {
    return 0; // NULL
  }
}
