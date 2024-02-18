import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yinde/data/network/upcoming_movie_api.dart';
import 'package:yinde/presentation/resources/color_management.dart';

class DescriptionPage extends StatelessWidget {
 late Result? item;

   DescriptionPage(this.item,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
      ),
      body: ListView(

        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorManager.darkPrimary,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(

                        item?.primaryImage?.url ?? "",

                    )

                ),
              )          ),
           Text( item?.primaryImage?.caption?.plainText ?? ''
          )

        ],
      ),
    );
  }
}
