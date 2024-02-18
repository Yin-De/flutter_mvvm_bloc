


import 'package:dartz/dartz.dart';
import 'package:yinde/data/network/api_client.dart';
import 'package:yinde/data/network/failure.dart';
import 'package:yinde/data/network/genre_api.dart';
import 'package:yinde/data/network/upcoming_movie_api.dart';
import 'package:yinde/domain/repository/repository.dart';




class RepositoryImpl implements MovieRepository{
  final ApiClient _client;

  RepositoryImpl(this._client);

  @override
  Future<Either<Failure, UpcomingMovieApi>> getUpcomingMovies() async{
    // TODO: implement getUpcomingMovies
    try{
      final UpcomingMovieApi movieModels = await _client.getUpcomingMovie();
      return Right(movieModels);
    }catch(error){
      print("-------");
      print(error);
      return Left(Failure("Something went wrong"));
    }

  }

  @override
  Future<Either<Failure, GenreApi>> getGenre()async {
    // TODO: implement getGenre
    try{
      final GenreApi genreModels = await _client.getGenre();
      return Right(genreModels);
    }catch(error){
      print("-------");
      print(error);
      return Left(Failure("Something went wrong"));
    }


  }

  @override
  Future<Either<Failure, UpcomingMovieApi>> getGenreMovie(String? genre)async {
    // TODO: implement getGenreMovie
    try{
      final UpcomingMovieApi genreMovieModels = await _client.getGenreMovie( genre );
      return Right(genreMovieModels);
    }catch(error){
      print("-------");
      print(error);
      return Left(Failure("Something went wrong"));
    }
  }



}