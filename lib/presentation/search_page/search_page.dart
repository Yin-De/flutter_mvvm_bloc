import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:yinde/di/dependency_injection.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_bloc.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_event.dart';
import 'package:yinde/presentation/bloc/search_page/search_page_state.dart';
import 'package:yinde/presentation/resources/color_management.dart';

import '../resources/style_manager.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SearchPageBloc>()..add(SearchPageEventGetMovie()),
      child: _SearchPage(),
    );
  }
}


class _SearchPage extends StatefulWidget {
  const _SearchPage({super.key});

  @override
  State<_SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<_SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchPageBloc, SearchPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.primary,

            title: SizedBox(
              width: 300,
              child: TextField(
                onTap: () {
                  // showSearch(context: context, delegate: CustomSearch());
                },
                // enabled: false,
                decoration: searchText(),
              ),
            ),
          ),
          body: Center(child: LoadingAnimationWidget.staggeredDotsWave(color: ColorManager.darkPrimary, size: 200))

        // ListView(
          //   children: [
          //
          //     SizedBox(
          //       height: MediaQuery
          //           .of(context)
          //           .size
          //           .height * 0.3,
          //       child: ListView.builder(
          //           scrollDirection: Axis.horizontal,
          //           itemBuilder: (context, ind) {
          //             return Container(
          //               margin: const EdgeInsets.all(20),
          //               height: 100,
          //               width: 200,
          //               color: Colors.red,
          //             );
          //           }
          //       ),
          //     ),
          //     SizedBox(
          //       height: MediaQuery
          //           .of(context)
          //           .size
          //           .height * 0.6,
          //       child: ListView.builder(
          //           itemBuilder: (context, ind) {
          //             return Container(
          //               margin: EdgeInsets.all(20),
          //               height: 200,
          //               width: 200,
          //               color: Colors.red,
          //             );
          //           }
          //       ),
          //     )
          //   ],
          // ),
        );
      },
    );;
  }
}
