// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'event_jsonld.dart';
import 'hydra_collection_base_schema.dart';
import 'search.dart';
import 'view.dart';

part 'get_api_events_response.g.dart';

/// EventJsonld collection.
@JsonSerializable()
class GetApiEventsResponse {
  const GetApiEventsResponse({
    required this.member,
    this.totalItems,
    this.search,
    this.view,
  });
  
  factory GetApiEventsResponse.fromJson(Map<String, Object?> json) => _$GetApiEventsResponseFromJson(json);
  
  final int? totalItems;
  final Search? search;
  final View? view;
  final List<EventJsonld> member;

  Map<String, Object?> toJson() => _$GetApiEventsResponseToJson(this);
}
