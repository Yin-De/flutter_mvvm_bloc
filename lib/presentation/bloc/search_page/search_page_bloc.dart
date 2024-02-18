import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_event.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_state.dart';


import '../../../domain/repository/repository.dart';


class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  final MovieRepository _repository;

  SearchPageBloc(this._repository) : super(SearchPageState()) {
    on<SearchPageEventGetMovie>(movieInitialFetchEvent);
  }
  FutureOr<void> movieInitialFetchEvent(
      SearchPageEventGetMovie event, Emitter<SearchPageState> emit) async {
    // emit(MovieFetchingSuccessfulState(upcomingMovie: _repository));
    emit(state.copyWith(state:ViewState.loading));
    final response = await _repository.getGenreMovie('Action');

    response.fold((failure) => emit(state.copyWith(state: ViewState.failure,errorMessage: failure.message)),
            (item) => emit(state.copyWith(state: ViewState.success,movieData: item)));
  }
}
