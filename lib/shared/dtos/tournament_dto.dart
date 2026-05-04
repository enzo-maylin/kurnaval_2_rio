class TournamentDto {
  final int? id;
  final String? name;
  final String? startDate;
  final String? endDate;

  const TournamentDto({this.id, this.name, this.startDate, this.endDate});

  factory TournamentDto.fromJson(Map<String, dynamic> json) {
    return TournamentDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'startDate': startDate, 'endDate': endDate};
  }
}
