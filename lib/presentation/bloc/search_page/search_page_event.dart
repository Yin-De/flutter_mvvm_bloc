import 'package:freezed_annotation/freezed_annotation.dart';

part  'search_page_event.freezed.dart';

@freezed
class SearchPageEvent with _$SearchPageEvent {
  const factory SearchPageEvent.getSearch() = SearchPageEventGetMovie;
}
