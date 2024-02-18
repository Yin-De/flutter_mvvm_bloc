// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:yinde/presentation/bloc/home_page/home_page_bloc.dart';
//
// import '../../di/dependency_injection.dart';
// import '../resources/color_management.dart';
// import '../resources/values_manager.dart';
//
// //
// // class Genre extends StatelessWidget {
// //   const Genre({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocProvider<GenreBloc>(
// //       create: (_) =>
// //       locator<GenreBloc>()..add(GenreInitialFetchEvent()),
// //       child: const _Genre()
// //     );
// //
// //   }
// // }
//
//
// class Genre extends StatelessWidget {
//  final HomePageBloc state;
//    Genre( this.state, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     if (state is GenreInitial) {
//     return const SizedBox.shrink();
//     } else if (state is GenreLoading) {
//     return const CircularProgressIndicator();
//     } else if (state is GenreFailure) {
//     return Text(state.message);
//     } else {
//     final data = (state as GenreFetchingSuccessfulState).data.results;
//         return Padding(
//           padding: const EdgeInsets.only(bottom: AppSize.s18, top: AppSize.s14),
//           child: SizedBox(
//             height: AppSize.s45,
//             child: ListView.builder(
//               itemCount: data?.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, ind) {
//
//                   final item = data?[ind];
//                   if (item==null) return SizedBox();
//
//                 return Padding(
//                       padding: const EdgeInsets.only(left: AppSize.s18),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                               ColorManager.darkPrimary),
//                         ),
//                         child:  Text(
//                           item ?? '' ,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ));
//                 }),
//           ),
//         );
//     }
//
//   }
// }
