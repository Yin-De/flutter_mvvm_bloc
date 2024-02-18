// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movie_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingMovieApi _$UpcomingMovieApiFromJson(Map<String, dynamic> json) =>
    UpcomingMovieApi(
      (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingMovieApiToJson(UpcomingMovieApi instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['_id'] as String?,
      json['id'] as String?,
      json['primaryImage'] == null
          ? null
          : PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
      json['originalTitleText'] == null
          ? null
          : OriginalTitleText.fromJson(
              json['originalTitleText'] as Map<String, dynamic>),
      json['releaseYear'] == null
          ? null
          : ReleaseYear.fromJson(json['releaseYear'] as Map<String, dynamic>),
      json['releaseDate'] == null
          ? null
          : ReleaseDate.fromJson(json['releaseDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      '_id': instance.id,
      'id': instance.resultId,
      'primaryImage': instance.primaryImage,
      'originalTitleText': instance.originalTitleText,
      'releaseYear': instance.releaseYear,
      'releaseDate': instance.releaseDate,
    };

OriginalTitleText _$OriginalTitleTextFromJson(Map<String, dynamic> json) =>
    OriginalTitleText(
      json['text'] as String?,
      json['__typename'] as String?,
    );

Map<String, dynamic> _$OriginalTitleTextToJson(OriginalTitleText instance) =>
    <String, dynamic>{
      'text': instance.text,
      '__typename': instance.typename,
    };

PrimaryImage _$PrimaryImageFromJson(Map<String, dynamic> json) => PrimaryImage(
      json['id'] as String?,
      json['width'] as int?,
      json['height'] as int?,
      json['url'] as String?,
      json['caption'] == null
          ? null
          : Caption.fromJson(json['caption'] as Map<String, dynamic>),
      json['__typename'] as String?,
    );

Map<String, dynamic> _$PrimaryImageToJson(PrimaryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'caption': instance.caption,
      '__typename': instance.typename,
    };

Caption _$CaptionFromJson(Map<String, dynamic> json) => Caption(
      json['plainText'] as String?,
      json['__typename'] as String?,
    );

Map<String, dynamic> _$CaptionToJson(Caption instance) => <String, dynamic>{
      'plainText': instance.plainText,
      '__typename': instance.typename,
    };

ReleaseDate _$ReleaseDateFromJson(Map<String, dynamic> json) => ReleaseDate(
      json['day'] as int?,
      json['month'] as int?,
      json['year'] as int?,
      json['__typename'] as String?,
    );

Map<String, dynamic> _$ReleaseDateToJson(ReleaseDate instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      '__typename': instance.typename,
    };

ReleaseYear _$ReleaseYearFromJson(Map<String, dynamic> json) => ReleaseYear(
      json['year'] as int?,
      json['endYear'],
      json['__typename'] as String?,
    );

Map<String, dynamic> _$ReleaseYearToJson(ReleaseYear instance) =>
    <String, dynamic>{
      'year': instance.year,
      'endYear': instance.endYear,
      '__typename': instance.typename,
    };
