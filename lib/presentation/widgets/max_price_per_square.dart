import 'package:flutter/material.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class MaxPriceSquare extends StatelessWidget {
  const MaxPriceSquare({super.key, required this.maxPrice});
  final String maxPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 8,right: 8,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.subtitleGrey)
      ),
      child: RichText(text: TextSpan(text: maxPrice
          ,style: const TextStyle(color: AppColors.black),
      children: const [
         TextSpan(text: " +",style: TextStyle(color: AppColors.subtitleGrey)),
         TextSpan(text: "  \$",style: TextStyle(color: AppColors.subtitleGrey)),
      ])),
    );
  }
}
