class Ingredient {
  Ingredient({
    required this.name,
    this.id,
    this.weight,
    this.value,
    this.effectsNames,
    this.text = 'text: unknown',
  });
  final String? id;
  final String name;
  final double? weight;
  final int? value;
  final List<dynamic>? effectsNames;
  final String? text;

  factory Ingredient.fromMap(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final id = data.containsKey('id') ? data['id'] as String : null;

    double? weight; //skyrim-specific
    if (data.containsKey('weight')) {
      if (data['weight'] is double) {
        weight = data['weight'] as double;
      }
      if (data['weight'] is int) {
        weight = (data['weight']).toDouble();
      }
    }
    final value = data.containsKey('value') ? data['value'] as int : null; //skyrim-specific
    final effectsNames = data.containsKey('effects') ? data['effects'] as List<dynamic> : [];
    final text = data.containsKey('text') ? data['text'] as String : null; //not found in skyrim

    return Ingredient(
      name: name,
      id: id,
      weight: weight,
      value: value,
      effectsNames: effectsNames,
      text: text,
    );
  }
}
