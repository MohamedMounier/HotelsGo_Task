import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/widgets/custom_loading_animattion.dart';
import 'package:hotelsgo_task/presentation/widgets/favorite_button.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        CachedNetworkImage(
          height: 20.h,
          width: 100.w,
          fadeInCurve: Curves.fastEaseInToSlowEaseOut,
          progressIndicatorBuilder: (context,str,ss){
            return  const ShimmerPost(height: 200,);
          },
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: FavoriteButton(),
        )
      ],
    );
  }
}
