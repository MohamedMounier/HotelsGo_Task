import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class StarsSquare extends StatelessWidget {
  const StarsSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 45,
          width: 45,

          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.starYellow),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star_half,
                color: AppColors.starYellow,
                size: 14.dp,

              ),
              Icon(
                Icons.star,
                color: AppColors.starYellow,
                size: 14.dp,

              ),
            ],
          ),
        ),
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.starYellow),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star,
                color: AppColors.starYellow,
                size: 14.dp,
              ),
              Icon(
                Icons.star,
                color: AppColors.starYellow,
                size: 14.dp,

              ),
            ],
          ),
        ),
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.starYellow),
              color: Colors.white),
          child:Column(

            children: [
              Center(
                child: Icon(
                  Icons.star,
                  color: AppColors.starYellow,
                  size: 14.dp,

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 14.dp,

                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 14.dp,

                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.starYellow),
              color: Colors.white),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.starYellow,
                      size: 13.dp,

                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.starYellow,
                      size: 13.dp,

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.starYellow,
                      size: 13.dp,

                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.starYellow,
                      size: 13.dp,

                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 45,
          width: 45,
          padding: const EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.starYellow),
              color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 12.dp,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 12.dp,
                  ),
                ],
              ),
              Center(
                child: Icon(
                  Icons.star,
                  color: AppColors.starYellow,
                  size: 12.dp,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 12.dp,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.starYellow,
                    size: 12.dp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
