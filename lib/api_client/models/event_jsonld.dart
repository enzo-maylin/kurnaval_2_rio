// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'event_jsonld.g.dart';

@JsonSerializable()
class EventJsonld {
  const EventJsonld({
    required this.object6,
    required this.object7,
    this.object5,
    this.id,
    this.title,
    this.description,
    this.startAt,
    this.endAt,
    this.location,
  });
  
  factory EventJsonld.fromJson(Map<String, Object?> json) => _$EventJsonldFromJson(json);
  
  /// Incorrect name has been replaced. Original name: `@context`.
  /// Incorrect name has been replaced. Original name: `@context`.
  @JsonKey(name: '@context')
  final dynamic object5;

  /// Incorrect name has been replaced. Original name: `@id`.
  @JsonKey(name: '@id')
  final String object6;

  /// Incorrect name has been replaced. Original name: `@type`.
  @JsonKey(name: '@type')
  final String object7;
  final int? id;
  final String? title;
  final String? description;
  final DateTime? startAt;
  final DateTime? endAt;
  final String? location;

  Map<String, Object?> toJson() => _$EventJsonldToJson(this);
}
