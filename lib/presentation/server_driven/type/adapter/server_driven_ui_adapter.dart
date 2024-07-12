import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/datasource/response_model/server_driven_ui/content/v1/screen_content_v1.dart';
import 'package:flutter_server_driven_ui/presentation/badge/component/badge_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/component/plus_title_component.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_text_style.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_image.dart';
import 'package:flutter_server_driven_ui/presentation/plus_title/model/plus_title_text.dart';
import 'package:flutter_server_driven_ui/presentation/title/component/title_component.dart';
import 'package:flutter_server_driven_ui/presentation/server_driven/type/section_component_type.dart';

// 서버에서 받은 데이터를 화면에 표시할 수 있는 위젯으로 변환
class ServerDrivenUIAdapter {
  static List<Widget> adapt(List<ScreenContent> contentList) {
    final List<Widget> serverDrivenWidgets = [];

    for (int index = 0; index < contentList.length; index++) {
      final content = contentList[index];

      switch (content.sectionComponentType) {
        case SectionComponentType.title:
          serverDrivenWidgets.add(
            TitleComponent(
              title: content.section['title'] ?? '',
              badges: _adaptBadges(content.section['badges'] ?? []),
              description: content.section['description'] ?? '',
            ),
          );
          break;

        case SectionComponentType.plusTitle:
          serverDrivenWidgets.add(
            PlusTitleComponent(
              firstRowImage: PlusTitleImage(
                imgUrl: content.section['firstRowImage']['imgUrl'] ?? '',
                width: double.tryParse(
                        content.section['firstRowImage']['width'] ?? '120') ??
                    120.0,
                height: double.tryParse(
                        content.section['firstRowImage']['height'] ?? '30') ??
                    30.0,
              ),
              titleText: PlusTitleText(
                text: content.section['titleText']['text'] ?? '',
                textSize: double.tryParse(
                      content.section['titleText']['textSize'] ?? '30.0',
                    ) ??
                    30.0,
                textColor: _parseHexColor(
                  content.section['titleText']['textColor'] ?? '#000000',
                ),
                textStyle: _parseTextStyle(
                  content.section['titleText']['textStyle'] ?? '',
                ),
              ),
              badges: _adaptBadges(content.section['badges'] ?? []),
              description: content.section['description'] ?? '',
            ),
          );
          break;

        default:
          print('Unknown component type: ${content.sectionComponentType.name}');
          break;
      }
    }

    return serverDrivenWidgets;
  }

  // 뱃지 목록은 Map<String, dynamic> 형태로 주어지므로 이를 List<BadgeComponent>로 변환
  static List<BadgeComponent> _adaptBadges(List<dynamic> badges) {
    final List<BadgeComponent> result = [];

    for (final e in badges) {
      final Map badge = Map.from(e);

      result.add(
        BadgeComponent(
          src: badge['badgeImage'] ?? '',
          text: badge['text'] ?? '',
        ),
      );
    }

    return result;
  }

  // 16진수 색상 코드를 int로 변환
  static int _parseHexColor(String hexColor) {
    try {
      return int.parse("0xFF${hexColor.replaceAll('#', '')}");
    } catch (e) {
      print('Error parsing color: $e');
      return Colors.black.value; // 파싱 실패하면 검은색으로 반환
    }
  }

  // 텍스트 스타일을 bit mask로 변환
  static int _parseTextStyle(String textStyle) {
    int parsedTextStyle = 0;

    if (textStyle.contains('bold')) {
      parsedTextStyle |= PlusTextStyle.bold;
    }
    if (textStyle.contains('italic')) {
      parsedTextStyle |= PlusTextStyle.italic;
    }
    if (textStyle.contains('strike')) {
      parsedTextStyle |= PlusTextStyle.strike;
    }

    return parsedTextStyle;
  }
}
