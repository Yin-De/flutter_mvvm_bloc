
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/network/upcoming_movie_api.dart';

part  'search_page_state.freezed.dart';



@freezed
class SearchPageState with _$SearchPageState {
  factory SearchPageState(
      {@Default(ViewState.initial) ViewState state,
        String? errorMessage,
        UpcomingMovieApi? movieData}) = _SearchPageState;
}

enum ViewState { initial, loading, failure,success }

extension AccessViewState on ViewState {
  bool get isInitial => this == ViewState.initial;
  // bool get isGenreLoading => this == ViewState.genreLoading;
  // bool get isMovieLoading => this == ViewState.movieLoading;
  bool get isLoading => this == ViewState.loading;
  bool get isFailure => this == ViewState.failure;
  // bool get isGenreSuccess => this == ViewState.genreSuccess;
  bool get iSuccess => this == ViewState.success;
// bool get isMovieSuccess => this == ViewState.movieSuccess;
}
