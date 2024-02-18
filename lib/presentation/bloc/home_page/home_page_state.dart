import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yinde/data/network/genre_api.dart';
import 'package:yinde/data/network/upcoming_movie_api.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState(
      {@Default(ViewState.initial) ViewState state,
      String? errorMessage,
      GenreApi? genreData,
        @Default(false) isCategoryClicked,
      UpcomingMovieApi? movieData,UpcomingMovieApi? genreMovieData}) = _HomePageState;
}

enum ViewState { initial, loading, failure,genreMovieFailure,success,genreMovieLoading,genreMovieSuccess }

extension AccessViewState on ViewState {
  bool get isInitial => this == ViewState.initial;
  // bool get isGenreLoading => this == ViewState.genreLoading;
  bool get isLoading => this == ViewState.loading;
  bool get isGenreMovieLoading => this == ViewState.genreMovieLoading;

  bool get isFailure => this == ViewState.failure;
  bool get isGenreMovieFailure => this == ViewState.genreMovieFailure;
  // bool get isGenreSuccess => this == ViewState.genreSuccess;
  bool get iSuccess => this == ViewState.success;
  bool get isGenreMovieSuccess => this == ViewState.genreMovieSuccess;
}
