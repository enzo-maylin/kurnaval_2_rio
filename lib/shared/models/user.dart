import 'package:kurnaval_2_rio/shared/models/family.dart';

class User {
  final int? id;
  final String? email;
  final List<String> roles;
  final String? loginCode;
  final DateTime? loginCodeExpiresAt;
  final String username;
  final double balance;
  final DateTime? createdAt;
  final Family? family;

  const User({
    this.id,
    this.email,
    this.roles = const [],
    this.loginCode,
    this.loginCodeExpiresAt,
    required this.username,
    this.balance = 0.0,
    this.createdAt,
    this.family,
  });

  /// Méthode pour créer une copie de l'objet avec de nouvelles valeurs
  User copyWith({
    int? id,
    String? email,
    List<String>? roles,
    String? loginCode,
    DateTime? loginCodeExpiresAt,
    String? username,
    double? balance,
    DateTime? createdAt,
    Family? family,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      roles: roles ?? this.roles,
      loginCode: loginCode ?? this.loginCode,
      loginCodeExpiresAt: loginCodeExpiresAt ?? this.loginCodeExpiresAt,
      username: username ?? this.username,
      balance: balance ?? this.balance,
      createdAt: createdAt ?? this.createdAt,
      family: family ?? this.family,
    );
  }
}
