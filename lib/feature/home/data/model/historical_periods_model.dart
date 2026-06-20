class HistoricalPeriodsModel {
  final String name;
  final String image;
  final String description;
  final Wars wars;

  HistoricalPeriodsModel({
    required this.name,
    required this.image,
    required this.description,
    required this.wars,
  });

  factory HistoricalPeriodsModel.fromJson(Map<String, dynamic> json) =>
      HistoricalPeriodsModel(
        name: json["name"] as String? ?? '',
        image: json["image"] as String? ?? '',
        description: json["description"] as String? ?? '',
        wars: Wars.fromJson(json["wars"] as Map<String, dynamic>? ?? {}),
      );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "description": description,
    "wars": wars.toJson(),
  };
}

class Wars {
  final String name;
  final String image;

  Wars({required this.name, required this.image});

  factory Wars.fromJson(Map<String, dynamic> json) => Wars(
    name: json["name"] as String? ?? '',
    image: json["image"] as String? ?? "",
  );

  Map<String, dynamic> toJson() => {"name": name, "image": image};
}
