class Ingredient {
  Ingredient({
    required this.name,
    this.id,
    this.weight,
    this.value,
    this.uespUrl,
    this.harvestProbability,
    this.iconUrl,
    this.origin,
    this.effectsNames = const [],
    this.text = 'text: unknown',
  });
  final String? id;
  final String name;
  final double? weight;
  final int? value;
  final String? uespUrl;
  final String? iconUrl;
  final int? harvestProbability;
  final List<dynamic> effectsNames;
  final String? text;
  final String? origin;

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
    final effectsNames = data.containsKey('effects') ? data['effects'] as List<String> : [];
    final text = data.containsKey('text') ? data['text'] as String : null; //not found in skyrim

    final uespUrl = data.containsKey('uesp_url') ? data['uesp_url'] as String : null; //not found in skyrim
    final harvestProbability =
        data.containsKey('harvest_probability') ? data['harvest_probability'] : null; //not found in skyrim
    final iconUrl = data.containsKey('icon') ? data['icon'] : null; //not found in skyrim

    final origin = data.containsKey('origin') ? data['origin'] : null;
    return Ingredient(
      name: name,
      id: id,
      weight: weight,
      value: value,
      effectsNames: effectsNames,
      text: text,
      uespUrl: uespUrl,
      harvestProbability: harvestProbability,
      iconUrl: iconUrl,
      origin: origin,
    );
  }
}
