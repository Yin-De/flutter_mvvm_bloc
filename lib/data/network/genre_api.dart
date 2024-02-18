import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'genre_api.g.dart';

GenreApi genreApiFromJson(String str) => GenreApi.fromJson(json.decode(str));

String genreApiToJson(GenreApi data) => json.encode(data.toJson());

@JsonSerializable()
class GenreApi {
  @JsonKey(name: "results")
  List<String?>? results;

  GenreApi(
     this.results,
  );

  factory GenreApi.fromJson(Map<String, dynamic> json) => _$GenreApiFromJson(json);

  Map<String, dynamic> toJson() => _$GenreApiToJson(this);
}
