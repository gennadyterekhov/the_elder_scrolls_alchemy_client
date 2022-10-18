class Effect {
  Effect({
    required this.name,
    this.id,
    this.text,
    this.magnitude,
    this.value,
  });
  final String? id;
  final String name;
  final String? text;
  final int? magnitude;
  final int? value;

  factory Effect.fromMap(Map<String, dynamic> data) {
    // make all necessary checks so that all games are ok
    final name = data['name'] as String;
    final id = data.containsKey('id') ? data['id'] as String : null;
    final text = data.containsKey('text') ? data['text'] as String : null;
    final magnitude =
        data.containsKey('magnitude') ? data['magnitude'] as int : null;
    final value = data.containsKey('value') ? data['value'] as int : null;

    return Effect(
      name: name,
      id: id,
      text: text,
      magnitude: magnitude,
      value: value,
    );
  }
}
