import 'package:kurnaval_2_rio/shared/dtos/tournament_dto.dart';

class SportMatchDto {
  final int? id;
  final String? matchDate;
  final String? status;
  final int? homeScore;
  final int? awayScore;
  final String? urlImage;
  final String? urlLive;
  final TournamentDto? tournament;

  const SportMatchDto({
    this.id,
    this.matchDate,
    this.status,
    this.homeScore,
    this.awayScore,
    this.urlImage,
    this.urlLive,
    this.tournament,
  });

  factory SportMatchDto.fromJson(Map<String, dynamic> json) {
    return SportMatchDto(
      id: json['id'] as int?,
      matchDate: json['matchDate'] as String?,
      status: json['status'] as String?,
      homeScore: json['homeScore'] as int?,
      awayScore: json['awayScore'] as int?,
      urlImage: json['urlImage'] as String?,
      urlLive: json['urlLive'] as String?,
      tournament: json['tournament'] != null
          ? TournamentDto.fromJson(json['tournament'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'matchDate': matchDate,
      'status': status,
      'homeScore': homeScore,
      'awayScore': awayScore,
      'urlImage': urlImage,
      'urlLive': urlLive,
      'tournament': tournament?.toJson(),
    };
  }
}
