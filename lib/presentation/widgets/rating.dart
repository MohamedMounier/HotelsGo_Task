import 'package:flutter/material.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({super.key,required this.stars});
  final int stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(stars-1, (index) =>  const Icon(Icons.star,color: AppColors.darkGrey,)),
    );
  }
}
