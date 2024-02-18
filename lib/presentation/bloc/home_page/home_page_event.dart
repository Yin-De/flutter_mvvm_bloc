import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_event.freezed.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.getGenres() = HomePageEventGetGenres;
  const factory HomePageEvent.getMovies() = HomePageEventGetMovies;
  const factory HomePageEvent.getGenreMovie(String? genre) = HomePageEventGetGenreMovie;

}