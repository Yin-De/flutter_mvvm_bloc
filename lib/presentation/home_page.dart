import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:yinde/data/network/upcoming_movie_api.dart';
import 'package:yinde/presentation/bloc/home_page/home_page_bloc.dart';
import 'package:yinde/presentation/bloc/home_page/home_page_event.dart';
import 'package:yinde/presentation/bloc/home_page/home_page_state.dart';
import 'package:yinde/presentation/description/description_page.dart';
import 'package:yinde/presentation/resources/color_management.dart';
import 'package:yinde/presentation/resources/string_manager.dart';
import 'package:yinde/presentation/resources/style_manager.dart';
import 'package:yinde/presentation/resources/values_manager.dart';
import 'package:yinde/presentation/search_page/search_page.dart';

import '../di/dependency_injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<HomePageBloc>()
        ..add(const HomePageEventGetGenres())
        ..add(const HomePageEventGetMovies()),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({super.key});

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final genreData = state.genreData?.results;
        final movieData = state.movieData?.results;
        late List<Result>? genrMovieData = state.genreMovieData?.results;
        print(
            '============================${genrMovieData}=======================');
        print(state);

        if (state.state.isLoading) {
          return Center(
              child: LoadingAnimationWidget.beat(
                  color: ColorManager.darkPrimary, size: 200));
        }
        if (state.state.isInitial) {
          return const SizedBox.shrink();
        }
        if(state.state.isFailure){
          return Center(child: Text(state.errorMessage.toString()));
        }
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.all(AppSize.s18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.welcome),
                      Text(AppStrings.relax)
                    ],
                  ),
                  GestureDetector(onTap: () {}, child: CircleAvatar())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.s18),
              child: TextField(
                onTap: () {
                  // showSearch(context: context, delegate: CustomSearch());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                  // setState(() {
                  //   currentIndex=3;
                  // });
                },
                readOnly: true,
                // enabled: false,
                decoration: searchText(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.s18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.categories,
                    style: getMediumStyleBigs(color: Colors.white),
                  ),
                  const Text(AppStrings.viewall)
                ],
              ),
            ),
            //  Genre(state),
            if (state.state.isFailure) ...[Text(state.errorMessage ?? "")],
            if (state.state.iSuccess || state.isCategoryClicked == true) ...[
              Padding(
                padding: const EdgeInsets.only(
                    bottom: AppSize.s18, top: AppSize.s14),
                child: SizedBox(
                  height: AppSize.s50,
                  child: ListView.builder(
                      itemCount: genreData?.length ?? 0,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, ind) {
                        final item = genreData?[ind];
                        if (item == null) return const SizedBox();

                        return Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSize.s18),
                                child: ElevatedButton(
                                  onPressed: ()  {
                                     context.read<HomePageBloc>()
                                      ..add(HomePageEventGetGenreMovie(item));
                                       setState(() {
                                         currentIndex = ind;
                                       });


                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        currentIndex == ind
                                            ? ColorManager.error
                                            : ColorManager.darkPrimary),
                                  ),
                                  child: Text(
                                    item ?? '',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )),
                          ],
                        );
                      }),
                ),
              )
            ],
            Padding(
              padding: const EdgeInsets.all(AppSize.s18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.upcoming,
                    style: getMediumStyleBigs(color: Colors.white),
                  ),
                  const Text(AppStrings.viewall)
                ],
              ),
            ),
            // UpcomingMovie(state)

            if (state.state.iSuccess || state.isCategoryClicked == true) ...[
              // if(state.state.isGenreMovieFailure)...[
              //   Center(child: Text(state.errorMessage.toString()))
              // ],
              if (state.state.isGenreMovieLoading) ...[
                SizedBox(
                    height: AppSize.s350,
                    child: Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                            color: ColorManager.darkPrimary, size: 200)))
              ]

              else ...[
                SizedBox(
                  height: AppSize.s350,
                  child: ListView.builder(
                      itemCount: movieData?.length ?? 0,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, ind) {
                        final item = movieData?[ind];
                        return Padding(
                            padding: const EdgeInsets.only(left: AppSize.s18),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DescriptionPage(item)));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 300,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorManager.darkPrimary,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: CachedNetworkImageProvider(
                                                  item?.primaryImage?.url ??
                                                      "")),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          child: SizedBox(
                                            width: 170,
                                            height: 20,
                                            child: Text(
                                                item?.originalTitleText?.text ??
                                                    ''
                                                // ?.plainText ?? ""
                                                ),
                                          ))
                                    ],
                                  ),
                                )));
                      }),
                ),
              ],
              Padding(
                padding: const EdgeInsets.all(AppSize.s18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.genreMovie,
                      style: getMediumStyleBigs(color: Colors.white),
                    ),
                    const Text(AppStrings.viewall)
                  ],
                ),
              )
            ]
            //   ,if(state.state.isGenreMovieLoading)...[
            //     const CircularProgressIndicator()
            //   ],
            //   if(state.state.isGenreMovieSuccess)...[
            //     SizedBox(
            //       height: AppSize.s350,
            //       child: ListView.builder(
            //           itemCount: genrMovieData?.length ?? 0,
            //           scrollDirection: Axis.horizontal,
            //           itemBuilder: (context, ind) {
            //             final item = genrMovieData?[ind];
            //             return Padding(
            //                 padding: const EdgeInsets.only(left: AppSize.s18),
            //                 child: GestureDetector(
            //                     onTap: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                               builder: (context) =>
            //                                   DescriptionPage(item)));
            //                     },
            //                     child: Padding(
            //                       padding: const EdgeInsets.all(8.0),
            //                       child: Column(
            //                         children: [
            //                           Container(
            //                             width: 200,
            //                             height: 300,
            //                             decoration: BoxDecoration(
            //                               borderRadius: BorderRadius.circular(5),
            //                               color: ColorManager.darkPrimary,
            //                               image: DecorationImage(
            //                                   fit: BoxFit.cover,
            //                                   image: CachedNetworkImageProvider(
            //                                       item?.primaryImage?.url ?? "")),
            //                             ),
            //                           ),
            //                           Padding(
            //                               padding: const EdgeInsets.symmetric(
            //                                   vertical: 5),
            //                               child: SizedBox(
            //                                 width: 170,
            //                                 height: 20,
            //                                 child: Text(
            //                                     item?.originalTitleText?.text ??
            //                                         ''
            //                                   // ?.plainText ?? ""
            //                                 ),
            //                               ))
            //                         ],
            //                       ),
            //                     )));
            //           }),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(AppSize.s18),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             AppStrings.genreMovie,
            //             style: getMediumStyleBigs(color: Colors.white),
            //           ),
            //           const Text(AppStrings.viewall)
            //         ],
            //       ),
            //     )
            //   ]
          ],
        );
      },
    );
  }
}
