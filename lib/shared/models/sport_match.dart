import 'package:kurnaval_2_rio/shared/models/tournament.dart';

enum MatchStatus {
  scheduled,
  live,
  finished,
  cancelled,
  unknown;

  /// Convertit la string reçue de l'API en valeur d'Enum
  static MatchStatus fromString(String? status) {
    if (status == null) return MatchStatus.scheduled;

    switch (status.toUpperCase()) {
      case 'scheduled':
        return MatchStatus.scheduled;
      case 'live':
        return MatchStatus.live;
      case 'finished':
        return MatchStatus.finished;
      case 'cancelled':
        return MatchStatus.cancelled;
      default:
        return MatchStatus.unknown;
    }
  }
}

class SportMatch {
  final int? id;
  final DateTime? matchDate;
  final MatchStatus status;
  final int? homeScore;
  final int? awayScore;
  final String? urlImage;
  final String? urlLive;
  final Tournament? tournament;

  const SportMatch({
    this.id,
    this.matchDate,
    this.status = MatchStatus.scheduled,
    this.homeScore,
    this.awayScore,
    this.urlImage,
    this.urlLive,
    this.tournament,
  });

  /// Méthode pour cloner l'objet avec de nouvelles valeurs
  SportMatch copyWith({
    int? id,
    DateTime? matchDate,
    MatchStatus? status,
    int? homeScore,
    int? awayScore,
    String? urlImage,
    String? urlLive,
    Tournament? tournament,
  }) {
    return SportMatch(
      id: id ?? this.id,
      matchDate: matchDate ?? this.matchDate,
      status: status ?? this.status,
      homeScore: homeScore ?? this.homeScore,
      awayScore: awayScore ?? this.awayScore,
      urlImage: urlImage ?? this.urlImage,
      urlLive: urlLive ?? this.urlLive,
      tournament: tournament ?? this.tournament,
    );
  }
}
