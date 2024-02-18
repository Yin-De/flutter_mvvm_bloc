// To parse this JSON data, do
//
//     final upcomingMovieApi = upcomingMovieApiFromJson(jsonString);



// To parse this JSON data, do
//
//     final upcomingMovieApi = upcomingMovieApiFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'upcoming_movie_api.g.dart';

UpcomingMovieApi upcomingMovieApiFromJson(String str) => UpcomingMovieApi.fromJson(json.decode(str));

String upcomingMovieApiToJson(UpcomingMovieApi data) => json.encode(data.toJson());

@JsonSerializable()
class UpcomingMovieApi {
  @JsonKey(name: "results")
  List<Result>? results;

  UpcomingMovieApi(
     this.results,
  );

  factory UpcomingMovieApi.fromJson(Map<String, dynamic> json) => _$UpcomingMovieApiFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingMovieApiToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "id")
  String? resultId;
  @JsonKey(name: "primaryImage")
  PrimaryImage? primaryImage;
  @JsonKey(name: "originalTitleText")
  OriginalTitleText? originalTitleText;
  @JsonKey(name: "releaseYear")
  ReleaseYear? releaseYear;
  @JsonKey(name: "releaseDate")
  ReleaseDate? releaseDate;

  Result(
     this.id,
     this.resultId,
     this.primaryImage,
     this.originalTitleText,
     this.releaseYear,
     this.releaseDate,
  );

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class OriginalTitleText {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "__typename")
  String? typename;

  OriginalTitleText(
     this.text,
     this.typename,
  );

  factory OriginalTitleText.fromJson(Map<String, dynamic> json) => _$OriginalTitleTextFromJson(json);

  Map<String, dynamic> toJson() => _$OriginalTitleTextToJson(this);
}

@JsonSerializable()
class PrimaryImage {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "caption")
  Caption? caption;
  @JsonKey(name: "__typename")
  String? typename;

  PrimaryImage(
     this.id,
     this.width,
     this.height,
     this.url,
     this.caption,
     this.typename,
  );

  factory PrimaryImage.fromJson(Map<String, dynamic> json) => _$PrimaryImageFromJson(json);

  Map<String, dynamic> toJson() => _$PrimaryImageToJson(this);
}

@JsonSerializable()
class Caption {
  @JsonKey(name: "plainText")
  String? plainText;
  @JsonKey(name: "__typename")
  String? typename;

  Caption(
     this.plainText,
     this.typename,
  );

  factory Caption.fromJson(Map<String, dynamic> json) => _$CaptionFromJson(json);

  Map<String, dynamic> toJson() => _$CaptionToJson(this);
}

@JsonSerializable()
class ReleaseDate {
  @JsonKey(name: "day")
  int? day;
  @JsonKey(name: "month")
  int? month;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "__typename")
  String? typename;

  ReleaseDate(
     this.day,
     this.month,
     this.year,
     this.typename,
  );

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => _$ReleaseDateFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseDateToJson(this);
}

@JsonSerializable()
class ReleaseYear {
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "endYear")
  dynamic? endYear;
  @JsonKey(name: "__typename")
  String? typename;

  ReleaseYear(
     this.year,
     this.endYear,
     this.typename,
  );

  factory ReleaseYear.fromJson(Map<String, dynamic> json) => _$ReleaseYearFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseYearToJson(this);
}



// import 'package:json_annotation/json_annotation.dart';
// import 'dart:convert';
//
// part 'upcoming_movie_api.g.dart';
//
//
// @JsonSerializable()
// class UpcomingMovieApi {
//   @JsonKey(name: "results")
//   List<Result>? results;
//
//   UpcomingMovieApi(
//      this.results,
//   );
//
//   factory UpcomingMovieApi.fromJson(Map<String, dynamic> json) => _$UpcomingMovieApiFromJson(json);
//
//   Map<String, dynamic> toJson() => _$UpcomingMovieApiToJson(this);
// }
//
// @JsonSerializable()
// class Result {
//   @JsonKey(name: "id")
//   String? id;
//   @JsonKey(name: "primaryImage")
//   PrimaryImage? primaryImage;
//   @JsonKey(name: "releaseYear")
//   ReleaseYear? releaseYear;
//   @JsonKey(name: "releaseDate")
//   ReleaseDate? releaseDate;
//
//   Result(
//      this.id,
//      this.primaryImage,
//      this.releaseYear,
//      this.releaseDate,
//   );
//
//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ResultToJson(this);
// }
//
// @JsonSerializable()
// class PrimaryImage {
//   @JsonKey(name: "id")
//   String? id;
//   @JsonKey(name: "width")
//   int? width;
//   @JsonKey(name: "height")
//   int? height;
//   @JsonKey(name: "url")
//   String? url;
//   @JsonKey(name: "caption")
//   Caption? caption;
//   @JsonKey(name: "__typename")
//   String? typename;
//
//   PrimaryImage(
//      this.id,
//      this.width,
//      this.height,
//      this.url,
//      this.caption,
//      this.typename,
//   );
//
//   factory PrimaryImage.fromJson(Map<String, dynamic> json) => _$PrimaryImageFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PrimaryImageToJson(this);
// }
//
// @JsonSerializable()
// class Caption {
//   @JsonKey(name: "plainText")
//   String? plainText;
//   @JsonKey(name: "__typename")
//   String? typename;
//
//   Caption(
//      this.plainText,
//      this.typename,
//   );
//
//   factory Caption.fromJson(Map<String, dynamic> json) => _$CaptionFromJson(json);
//
//   Map<String, dynamic> toJson() => _$CaptionToJson(this);
// }
//
// @JsonSerializable()
// class ReleaseDate {
//   @JsonKey(name: "day")
//   int? day;
//   @JsonKey(name: "month")
//   int? month;
//   @JsonKey(name: "year")
//   int? year;
//   @JsonKey(name: "__typename")
//   String? typename;
//
//   ReleaseDate(
//      this.day,
//      this.month,
//      this.year,
//      this.typename,
//   );
//
//   factory ReleaseDate.fromJson(Map<String, dynamic> json) => _$ReleaseDateFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ReleaseDateToJson(this);
// }
//
// @JsonSerializable()
// class ReleaseYear {
//   @JsonKey(name: "year")
//   int? year;
//   @JsonKey(name: "__typename")
//   String typename;
//
//   ReleaseYear(
//      this.year,
//      this.typename,
//   );
//
//   factory ReleaseYear.fromJson(Map<String, dynamic> json) => _$ReleaseYearFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ReleaseYearToJson(this);
// }
