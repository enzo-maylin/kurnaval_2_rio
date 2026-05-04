class FamilyDto {
  final int? id;
  final String? name;
  final String? createdAt;
  final String? description;

  const FamilyDto({this.id, this.name, this.createdAt, this.description});

  factory FamilyDto.fromJson(Map<String, dynamic> json) {
    return FamilyDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt,
      'description': description,
    };
  }
}
