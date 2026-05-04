import 'package:kurnaval_2_rio/shared/dtos/sport_match_dto.dart';
import 'package:kurnaval_2_rio/shared/dtos/user_dto.dart';

class BetDto {
  final int? id;
  final num? amount; // num gère int ou double depuis le JSON
  final num? odds;
  final String? createdAt; // Le JSON envoie une String
  final String? prediction; // Le JSON envoie une String
  final num? finalGain;
  final SportMatchDto? match;
  final UserDto? user;

  const BetDto({
    this.id,
    this.amount,
    this.odds,
    this.createdAt,
    this.prediction,
    this.finalGain,
    this.match,
    this.user,
  });

  /// Parse le JSON brut reçu par Dio
  factory BetDto.fromJson(Map<String, dynamic> json) {
    return BetDto(
      id: json['id'] as int?,
      amount: json['amount'] as num?,
      odds: json['odds'] as num?,
      createdAt: json['createdAt'] as String?,
      prediction: json['prediction'] as String?,
      finalGain: json['finalGain'] as num?,
      match: json['match'] != null
          ? SportMatchDto.fromJson(json['match'] as Map<String, dynamic>)
          : null,
      user: json['user'] != null
          ? UserDto.fromJson(json['user'] as Map<String, dynamic>)
          : null,
    );
  }

  /// Envoi des données à l'API via un POST/PUT
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'odds': odds,
      'createdAt': createdAt,
      'prediction': prediction,
      'finalGain': finalGain,
      'match': match?.toJson(),
      'user': user?.toJson(),
    };
  }
}
