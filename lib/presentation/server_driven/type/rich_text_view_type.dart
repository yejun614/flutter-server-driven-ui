enum RichTextViewType {
  aViewType('AViewType'),
  bViewType('BViewType'),
  richViewType('RichViewType'),
  unknownViewType('UNKNOWN_VIEW_TYPE');

  const RichTextViewType(this.name);

  final String name;

  static final Map<String, RichTextViewType> _componentTypeMap =
      values.asMap().map((_, type) => MapEntry(type.name, type));

  static RichTextViewType? fromName(String name) {
    return _componentTypeMap[name];
  }
}
