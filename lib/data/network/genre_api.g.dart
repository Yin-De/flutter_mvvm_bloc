// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreApi _$GenreApiFromJson(Map<String, dynamic> json) => GenreApi(
      (json['results'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$GenreApiToJson(GenreApi instance) => <String, dynamic>{
      'results': instance.results,
    };
