class Tournament {
  final int? id;
  final String? name;
  final DateTime? startDate;
  final DateTime? endDate;

  const Tournament({this.id, this.name, this.startDate, this.endDate});

  /// Vérifie si le tournoi est actuellement en cours
  bool get isOngoing {
    if (startDate == null || endDate == null) return false;
    final now = DateTime.now();
    return now.isAfter(startDate!) && now.isBefore(endDate!);
  }

  /// Méthode pour cloner l'objet avec de nouvelles valeurs
  Tournament copyWith({
    int? id,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return Tournament(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }
}
