// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  ViewState get state => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  GenreApi? get genreData => throw _privateConstructorUsedError;
  dynamic get isCategoryClicked => throw _privateConstructorUsedError;
  UpcomingMovieApi? get movieData => throw _privateConstructorUsedError;
  UpcomingMovieApi? get genreMovieData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {ViewState state,
      String? errorMessage,
      GenreApi? genreData,
      dynamic isCategoryClicked,
      UpcomingMovieApi? movieData,
      UpcomingMovieApi? genreMovieData});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? genreData = freezed,
    Object? isCategoryClicked = freezed,
    Object? movieData = freezed,
    Object? genreMovieData = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreData: freezed == genreData
          ? _value.genreData
          : genreData // ignore: cast_nullable_to_non_nullable
              as GenreApi?,
      isCategoryClicked: freezed == isCategoryClicked
          ? _value.isCategoryClicked
          : isCategoryClicked // ignore: cast_nullable_to_non_nullable
              as dynamic,
      movieData: freezed == movieData
          ? _value.movieData
          : movieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
      genreMovieData: freezed == genreMovieData
          ? _value.genreMovieData
          : genreMovieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState state,
      String? errorMessage,
      GenreApi? genreData,
      dynamic isCategoryClicked,
      UpcomingMovieApi? movieData,
      UpcomingMovieApi? genreMovieData});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? genreData = freezed,
    Object? isCategoryClicked = freezed,
    Object? movieData = freezed,
    Object? genreMovieData = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreData: freezed == genreData
          ? _value.genreData
          : genreData // ignore: cast_nullable_to_non_nullable
              as GenreApi?,
      isCategoryClicked: freezed == isCategoryClicked
          ? _value.isCategoryClicked!
          : isCategoryClicked,
      movieData: freezed == movieData
          ? _value.movieData
          : movieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
      genreMovieData: freezed == genreMovieData
          ? _value.genreMovieData
          : genreMovieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  _$HomePageStateImpl(
      {this.state = ViewState.initial,
      this.errorMessage,
      this.genreData,
      this.isCategoryClicked = false,
      this.movieData,
      this.genreMovieData});

  @override
  @JsonKey()
  final ViewState state;
  @override
  final String? errorMessage;
  @override
  final GenreApi? genreData;
  @override
  @JsonKey()
  final dynamic isCategoryClicked;
  @override
  final UpcomingMovieApi? movieData;
  @override
  final UpcomingMovieApi? genreMovieData;

  @override
  String toString() {
    return 'HomePageState(state: $state, errorMessage: $errorMessage, genreData: $genreData, isCategoryClicked: $isCategoryClicked, movieData: $movieData, genreMovieData: $genreMovieData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.genreData, genreData) ||
                other.genreData == genreData) &&
            const DeepCollectionEquality()
                .equals(other.isCategoryClicked, isCategoryClicked) &&
            (identical(other.movieData, movieData) ||
                other.movieData == movieData) &&
            (identical(other.genreMovieData, genreMovieData) ||
                other.genreMovieData == genreMovieData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      errorMessage,
      genreData,
      const DeepCollectionEquality().hash(isCategoryClicked),
      movieData,
      genreMovieData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  factory _HomePageState(
      {final ViewState state,
      final String? errorMessage,
      final GenreApi? genreData,
      final dynamic isCategoryClicked,
      final UpcomingMovieApi? movieData,
      final UpcomingMovieApi? genreMovieData}) = _$HomePageStateImpl;

  @override
  ViewState get state;
  @override
  String? get errorMessage;
  @override
  GenreApi? get genreData;
  @override
  dynamic get isCategoryClicked;
  @override
  UpcomingMovieApi? get movieData;
  @override
  UpcomingMovieApi? get genreMovieData;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
