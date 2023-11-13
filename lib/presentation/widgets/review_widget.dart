import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key, required this.review});
  final String review;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green,
       shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10)
      ),
      padding:  const EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 2),
      child: Text(review,style: TextStyle(color: Colors.white,fontSize: 15.dp,fontWeight: FontWeight.bold),),
    );
  }
}
