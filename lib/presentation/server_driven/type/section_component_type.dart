enum SectionComponentType {
  title('TITLE'),
  plusTitle('PLUS_TITLE');

  const SectionComponentType(this.name);

  final String name;

  static final Map<String, SectionComponentType> _componentTypeMap =
      values.asMap().map((_, type) => MapEntry(type.name, type));

  static SectionComponentType? fromName(String name) {
    // json에 있는 문자열 sectionComponentType을 enum으로 변환하는데
    // dart 기본으로 가능한 것은 enum list를 순회하면서 찾는 방법이라서
    // 성능을 위해서 Map으로 변환해서 사용합니다
    return _componentTypeMap[name];
  }
}
