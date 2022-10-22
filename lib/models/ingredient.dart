class Ingredient {
  Ingredient({
    required this.name,
    this.id,
    this.weight,
    this.value,
    this.effectsNames,
  });
  final String? id;
  final String name;
  final double? weight;
  final int? value;
  final List<dynamic>? effectsNames;

  factory Ingredient.fromMap(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final id = data.containsKey('id') ? data['id'] as String : null;
    final weight = data.containsKey('weight') ? data['weight'] as double : null;
    final value = data.containsKey('value') ? data['value'] as int : null;
    final effectsNames = data.containsKey('effectsNames') ? data['effectsNames'] as List<dynamic> : [];

    return Ingredient(
      name: name,
      id: id,
      weight: weight,
      value: value,
      effectsNames: effectsNames,
    );
  }
}
