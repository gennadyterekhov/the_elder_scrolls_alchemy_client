class Effect {
  Effect({
    required this.name,
    this.id,
    this.text,
    this.magnitude,
    this.value,
    this.uespUrl,
    this.iconUrl,
    this.type,
    this.ingredientsNamesByPosition,
  });
  final String? id;
  final String name;
  final String? text;
  final int? magnitude;
  final int? value;
  final String? uespUrl;
  final String? iconUrl;
  final String? type;

  final List<dynamic>? ingredientsNamesByPosition;

  factory Effect.fromMap(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final id = data.containsKey('id') ? data['id'] as String : null;
    final text = data.containsKey('text') ? data['text'] as String : null;
    final magnitude = data.containsKey('magnitude') ? data['magnitude'] as int : null;
    final value = data.containsKey('value') ? data['value'] as int : null;
    final ingredientsNamesByPosition = data.containsKey('ingredients') ? data['ingredients'] as List<dynamic> : [];

    final uespUrl = data.containsKey('uesp_url') ? data['uesp_url'] as String : null; //not found in skyrim
    final iconUrl = data.containsKey('icon') ? data['icon'] as String : null; //not found in skyrim
    final type = data.containsKey('type') ? data['type'] as String : null; //not found in skyrim

    return Effect(
      name: name,
      id: id,
      text: text,
      magnitude: magnitude,
      value: value,
      ingredientsNamesByPosition: ingredientsNamesByPosition,
      type: type,
      uespUrl: uespUrl,
      iconUrl: iconUrl,
    );
  }
}
