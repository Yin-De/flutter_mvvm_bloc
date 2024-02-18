// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import '../bloc/home_page/home_page_bloc.dart';
// import '../resources/color_management.dart';
// import '../resources/values_manager.dart';
//
//
// class UpcomingMovie extends StatelessWidget {
//   final HomePageState state;
//
//    UpcomingMovie({
//     super.key, required this.state,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//       if (state is UpcomingMovieInitial) {
//         return const SizedBox.shrink();
//       } else if (state is UpcomingMovieLoading) {
//         return const CircularProgressIndicator();
//       } else if (state is UpcomingMovieFailure) {
//         return Text('failure');
//       } else {
//         final data = (state as MovieFetchingSuccessfulState).data.results;
//         return SizedBox(
//           height: AppSize.s350,
//           child: ListView.builder(
//             itemCount: data?.length ?? 0,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, ind) {
//               final item = data?[ind];
//                 return Padding(
//                     padding: const EdgeInsets.only(left: AppSize.s18),
//                     child: GestureDetector(
//                         onTap: () {},
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 200,
//                                 height: 300,
//                                 // child:  CachedNetworkImage(
//                                 //   imageUrl:item?.primaryImage?.url ?? "",
//                                 //   placeholder: (context, url) => CircularProgressIndicator(),
//                                 //   errorWidget: (context, url, error) => Icon(Icons.error),
//                                 // ),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(5),
//                                     color: ColorManager.darkPrimary,
//                                   image: DecorationImage(
//                                       fit: BoxFit.cover,
//                                       image:CachedNetworkImageProvider(
//                                           item?.primaryImage?.url ??""
//                                       )
//
//
//                                       // CachedNetworkImage(
//                                       //     imageUrl:item?.primaryImage?.url,
//                                       //   placeholder: (context, url) => CircularProgressIndicator(),
//                                       //   errorWidget: (context, url, error) => Icon(Icons.error),
//                                       // )
//                                       // NetworkImage(item?.primaryImage?.url ??  "")
//                                   ),
//                                 ),
//                                 ),
//
//                               Padding(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 5),
//                                   child: SizedBox(
//                                     width: 170,
//                                     height: 20,
//                                     child: Container(
//                                       // color: Colors.grey,
//                                       child: Text(item?.primaryImage?.caption?.plainText ?? ""
//                                       ),
//                                     ),
//                                   ))
//                             ],
//                           ),
//                         )));
//               }),
//         );
//       }
//
//   }
// }
