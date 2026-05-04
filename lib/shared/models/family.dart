class Family {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final String? description;

  const Family({this.id, this.name, this.createdAt, this.description});

  /// Permet de cloner l'objet en modifiant uniquement certaines propriétés
  Family copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
    String? description,
  }) {
    return Family(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
    );
  }
}
