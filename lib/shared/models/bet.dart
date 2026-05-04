import 'package:kurnaval_2_rio/shared/models/sport_match.dart';
import 'package:kurnaval_2_rio/shared/models/user.dart';

enum BetPrediction { homeWin, awayWin, draw, unknown }

class Bet {
  final int? id;
  final double? amount;
  final double? odds;
  final DateTime? createdAt;
  final BetPrediction? prediction;
  final double? finalGain;
  final SportMatch? match;
  final User? user;

  const Bet({
    this.id,
    this.amount,
    this.odds,
    this.createdAt,
    this.prediction,
    this.finalGain,
    this.match,
    this.user,
  });

  /// Méthode pour cloner l'objet avec de nouvelles valeurs
  Bet copyWith({
    int? id,
    double? amount,
    double? odds,
    DateTime? createdAt,
    BetPrediction? prediction,
    double? finalGain,
    SportMatch? match,
    User? user,
  }) {
    return Bet(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      odds: odds ?? this.odds,
      createdAt: createdAt ?? this.createdAt,
      prediction: prediction ?? this.prediction,
      finalGain: finalGain ?? this.finalGain,
      match: match ?? this.match,
      user: user ?? this.user,
    );
  }
}
