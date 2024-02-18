import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:yinde/presentation/bloc/home_page/home_page_event.dart';
import 'package:yinde/presentation/bloc/home_page/home_page_state.dart';

import '../../../data/network/genre_api.dart';
import '../../../data/network/upcoming_movie_api.dart';
import '../../../domain/repository/repository.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final MovieRepository _repository;

  HomePageBloc(this._repository) : super(HomePageState()) {
    on<HomePageEvent>(getData,transformer: sequential());
    on<HomePageEventGetGenreMovie>(genreMovieInitialFetchEvent);

    //   on<HomePageEventGetGenres>(genreInitialFechEvent);
  }

  Future<void> getData(HomePageEvent event, Emitter<HomePageState> emit) async {
    if(event is HomePageEventGetGenres) {
      emit(state.copyWith(state: ViewState.loading));
      final response = await _repository.getGenre();

      response.fold(
              (failure) => emit(state.copyWith(
              state: ViewState.failure, errorMessage: failure.message)),
              (item) => emit(
              state.copyWith( genreData: item)));
    } else if(event is HomePageEventGetMovies) {
      // final response = await _repository.getUpcomingMovies();
      //
      // response.fold(
      //         (failure) => emit(state.copyWith(
      //         state: ViewState.failure, errorMessage: failure.message)),
      //         (item) => emit(
      //         state.copyWith(state: ViewState.success, movieData: item)));
      // emit(MovieFetchingSuccessfulState(upcomingMovie: _repository));
      emit(state.copyWith(state:ViewState.loading,isCategoryClicked: true));
      final response = await _repository.getGenreMovie(state.genreData!.results?[1]);

      response.fold((failure) => emit(state.copyWith(state: ViewState.genreMovieFailure,errorMessage: failure.message)),
              (item) => emit(state.copyWith(state: ViewState.success,movieData: item)));

    }
  }

  // FutureOr<void> movieInitialFetchEvent(
  //     HomePageEventGetMovies event, Emitter<HomePageState> emit) async {
  //   // emit(MovieFetchingSuccessfulState(upcomingMovie: _repository));
  //   emit(state.copyWith(state: ViewState.loading));
  //   final response = await _repository.getUpcomingMovies();
  //
  //   response.fold(
  //       (failure) => emit(state.copyWith(
  //           state: ViewState.failure, errorMessage: failure.message)),
  //       (item) => emit(
  //           state.copyWith(state: ViewState.success, movieData: item)));
  // }
  //
  // FutureOr<void> genreInitialFetchEvent(
  //     HomePageEventGetGenres event, Emitter<HomePageState> emit) async {
  //   // emit(MovieFetchingSuccessfulState(upcomingMovie: UpcomingMovieState_repository));
  //   emit(state.copyWith(state: ViewState.loading));
  //   final response = await _repository.getGenre();
  //
  //   response.fold(
  //       (failure) => emit(state.copyWith(
  //           state: ViewState.failure, errorMessage: failure.message)),
  //       (item) => emit(
  //           state.copyWith(state: ViewState.success, genreData: item)));
  // }
  FutureOr<void> genreMovieInitialFetchEvent(
      HomePageEventGetGenreMovie event, Emitter<HomePageState> emit) async {
    // emit(MovieFetchingSuccessfulState(upcomingMovie: _repository));
    emit(state.copyWith(state:ViewState.genreMovieLoading,isCategoryClicked: true));
    final response = await _repository.getGenreMovie(event.genre);

    response.fold((failure) => emit(state.copyWith(state: ViewState.genreMovieFailure,errorMessage: failure.message)),
            (item) => emit(state.copyWith(state: ViewState.success,movieData: item)));
  }
}
