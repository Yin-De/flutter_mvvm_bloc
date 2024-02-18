import 'package:get_it/get_it.dart';
import 'package:yinde/data/network/api_client.dart';
import 'package:yinde/data/network/dio_factory.dart';
import 'package:yinde/data/repository/repository_impl.dart';
import 'package:yinde/domain/repository/repository.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_bloc.dart';
import '../presentation/bloc/home_page/home_page_bloc.dart';


final locator=GetIt.instance;

void setupLocator() async{
  locator.registerSingleton<DioFactory>(DioFactory());
  final dio= await locator<DioFactory>().getDio();
  locator.registerSingleton<ApiClient>(ApiClient(dio));
  setupRepository();
  setupBloc();
}

void setupRepository() {
  locator.registerLazySingleton<MovieRepository>(() => RepositoryImpl(locator()));
}

void setupBloc() {
  // locator.registerFactory<UpcomingMovieBloc>(() => UpcomingMovieBloc(locator()));
  locator.registerFactory<SearchPageBloc>(() => SearchPageBloc(locator()));
  locator.registerFactory<HomePageBloc>(() => HomePageBloc(locator()));
}

