import 'package:json_annotation/json_annotation.dart';

part 'server_driven_ui_model.g.dart';

@JsonSerializable()
class AViewTypeModel {
  final String title;

  AViewTypeModel({
    this.title = '',
  });

  factory AViewTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AViewTypeModelFromJson(json);
}

@JsonSerializable()
class BViewTypeModel {
  final String title;
  final String iconUrl;

  BViewTypeModel({
    this.title = '',
    this.iconUrl = '',
  });

  factory BViewTypeModel.fromJson(Map<String, dynamic> json) =>
      _$BViewTypeModelFromJson(json);
}

@JsonSerializable()
class RichViewTypeModel {
  final String title;
  final List<RichTextComponentModel> richText;

  RichViewTypeModel({
    this.title = '',
    List<RichTextComponentModel>? richText,
  }) : richText = richText ?? [];

  factory RichViewTypeModel.fromJson(Map<String, dynamic> json) =>
      _$RichViewTypeModelFromJson(json);
}

@JsonSerializable()
class RichTextComponentModel {
  final RichTextTextModel? text;
  final RichTextImageModel? image;

  RichTextComponentModel({
    this.text,
    this.image,
  });

  factory RichTextComponentModel.fromJson(Map<String, dynamic> json) =>
      _$RichTextComponentModelFromJson(json);
}

@JsonSerializable()
class RichTextTextModel {
  final String text;
  final double fontSize;
  final String background;
  final String textColor;
  final List<String> textStyle;

  RichTextTextModel({
    this.text = '',
    double? fontSize,
    this.background = 'white',
    this.textColor = 'black',
    List<String>? textStyle,
    double textSize = 12.0,
  })  : fontSize = fontSize ?? textSize,
        textStyle = textStyle ?? [];

  factory RichTextTextModel.fromJson(Map<String, dynamic> json) =>
      _$RichTextTextModelFromJson(json);
}

@JsonSerializable()
class RichTextImageModel {
  final String url;
  final double width;
  final double height;

  RichTextImageModel({
    this.url = '',
    this.width = 24.0,
    this.height = 24.0,
  });

  factory RichTextImageModel.fromJson(Map<String, dynamic> json) =>
      _$RichTextImageModelFromJson(json);
}
