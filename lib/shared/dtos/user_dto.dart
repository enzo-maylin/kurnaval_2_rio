import 'package:kurnaval_2_rio/shared/dtos/family_dto.dart';

class UserDto {
  final int? id;
  final String? email;
  final List<String>? roles;
  final String? loginCode;
  final String? loginCodeExpiresAt;
  final String? username;
  final num? balance;
  final String? createdAt;
  final FamilyDto? family;

  const UserDto({
    this.id,
    this.email,
    this.roles,
    this.loginCode,
    this.loginCodeExpiresAt,
    this.username,
    this.balance,
    this.createdAt,
    this.family,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'] as int?,
      email: json['email'] as String?,
      roles: json['roles'] != null
          ? List<String>.from(json['roles'] as List<dynamic>)
          : ['ROLE_USER'],
      loginCode: json['loginCode'] as String?,
      loginCodeExpiresAt: json['loginCodeExpiresAt'] as String?,
      username: json['username'] as String?,
      balance: json['balance'] as num?,
      createdAt: json['createdAt'] as String?,
      family: json['family'] != null
          ? FamilyDto.fromJson(json['family'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'roles': roles,
      'loginCode': loginCode,
      'loginCodeExpiresAt': loginCodeExpiresAt,
      'username': username,
      'balance': balance,
      'createdAt': createdAt,
      'family': family?.toJson(),
    };
  }
}
