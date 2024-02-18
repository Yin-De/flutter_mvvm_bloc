import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yinde/app/constant.dart';
import 'package:yinde/data/network/upcoming_movie_api.dart';

import 'genre_api.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class ApiClient {

	factory ApiClient(Dio dio) = _ApiClient;

	@GET("x/upcoming")
	Future<UpcomingMovieApi> getUpcomingMovie();

	@GET("utils/genres")
	Future<GenreApi> getGenre();

	@GET("")
	Future<UpcomingMovieApi> getGenreMovie(@Query("genre") String? genre);
	// Future<String> foo(@Query('bar') String query)


}