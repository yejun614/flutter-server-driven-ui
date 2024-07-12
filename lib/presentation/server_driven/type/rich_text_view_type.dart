enum RichTextViewType {
  aViewType('A_VIEW_TYPE'),
  bViewType('B_VIEW_TYPE'),
  richViewType('RICH_VIEW_TYPE'),
  unknownViewType('UNKNOWN_VIEW_TYPE');

  const RichTextViewType(this.name);

  final String name;

  static final Map<String, RichTextViewType> _componentTypeMap =
      values.asMap().map((_, type) => MapEntry(type.name, type));

  static RichTextViewType? fromName(String name) {
    return _componentTypeMap[name];
  }
}
