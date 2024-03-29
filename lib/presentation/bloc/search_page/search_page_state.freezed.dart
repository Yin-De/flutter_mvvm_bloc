// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageState {
  ViewState get state => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  UpcomingMovieApi? get movieData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {ViewState state, String? errorMessage, UpcomingMovieApi? movieData});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? movieData = freezed,
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
      movieData: freezed == movieData
          ? _value.movieData
          : movieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPageStateImplCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$SearchPageStateImplCopyWith(_$SearchPageStateImpl value,
          $Res Function(_$SearchPageStateImpl) then) =
      __$$SearchPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState state, String? errorMessage, UpcomingMovieApi? movieData});
}

/// @nodoc
class __$$SearchPageStateImplCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$SearchPageStateImpl>
    implements _$$SearchPageStateImplCopyWith<$Res> {
  __$$SearchPageStateImplCopyWithImpl(
      _$SearchPageStateImpl _value, $Res Function(_$SearchPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? movieData = freezed,
  }) {
    return _then(_$SearchPageStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      movieData: freezed == movieData
          ? _value.movieData
          : movieData // ignore: cast_nullable_to_non_nullable
              as UpcomingMovieApi?,
    ));
  }
}

/// @nodoc

class _$SearchPageStateImpl implements _SearchPageState {
  _$SearchPageStateImpl(
      {this.state = ViewState.initial, this.errorMessage, this.movieData});

  @override
  @JsonKey()
  final ViewState state;
  @override
  final String? errorMessage;
  @override
  final UpcomingMovieApi? movieData;

  @override
  String toString() {
    return 'SearchPageState(state: $state, errorMessage: $errorMessage, movieData: $movieData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPageStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.movieData, movieData) ||
                other.movieData == movieData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, errorMessage, movieData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      __$$SearchPageStateImplCopyWithImpl<_$SearchPageStateImpl>(
          this, _$identity);
}

abstract class _SearchPageState implements SearchPageState {
  factory _SearchPageState(
      {final ViewState state,
      final String? errorMessage,
      final UpcomingMovieApi? movieData}) = _$SearchPageStateImpl;

  @override
  ViewState get state;
  @override
  String? get errorMessage;
  @override
  UpcomingMovieApi? get movieData;
  @override
  @JsonKey(ignore: true)
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
