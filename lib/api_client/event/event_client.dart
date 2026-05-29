// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/event_jsonld.dart';
import '../models/get_api_events_response.dart';

part 'event_client.g.dart';

@RestApi()
abstract class EventClient {
  factory EventClient(Dio dio, {String? baseUrl}) = _EventClient;

  /// Retrieves the collection of Event resources.
  ///
  /// Retrieves the collection of Event resources.
  ///
  /// [page] - The collection page number.
  @GET('/api/events')
  Future<GetApiEventsResponse> apiEventsGetCollection({
    @Query('page') int? page = 1,
  });

  /// Retrieves a Event resource.
  ///
  /// Retrieves a Event resource.
  ///
  /// [id] - Event identifier.
  @GET('/api/events/{id}')
  Future<EventJsonld> apiEventsIdGet({
    @Path('id') required String id,
  });
}
