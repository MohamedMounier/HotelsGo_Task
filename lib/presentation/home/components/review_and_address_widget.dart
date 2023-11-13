import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'package:hotelsgo_task/presentation/widgets/review_widget.dart';

class ReviewAndAddressWidget extends StatelessWidget {
  const ReviewAndAddressWidget({super.key, required this.review, required this.reviewScore, required this.address});
  final String review;
  final String reviewScore;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ReviewWidget(review: reviewScore),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:Text(review),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child:Icon(Icons.location_on,size:15.dp,color: AppColors.subtitleGrey,),
        ),

        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child:Text(address),
          ),
        ),
      ],
    );
  }
}
