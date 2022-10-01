class Effect {
  Effect({
    required this.id,
    required this.name,
    required this.text,
    required this.magnitude,
    required this.value,
  });
  final String id;
  final String name;
  final String text;
  final int magnitude;
  final int value;

  factory Effect.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as String;
    final name = data['name'] as String;
    final text = data['text'] as String;
    final magnitude = data['magnitude'] as int;
    final value = data['value'] as int;

    return Effect(
      id: id,
      name: name,
      text: text,
      magnitude: magnitude,
      value: value,
    );
  }
}
