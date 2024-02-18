
import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';
import '../../data/network/genre_api.dart';
import '../../data/network/upcoming_movie_api.dart';

abstract class MovieRepository{
  Future<Either<Failure,UpcomingMovieApi>> getUpcomingMovies();
  Future<Either<Failure,GenreApi>> getGenre();
  Future<Either<Failure,UpcomingMovieApi>> getGenreMovie(String? genre);

}