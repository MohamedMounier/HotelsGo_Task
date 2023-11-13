import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';
import 'package:hotelsgo_task/presentation/widgets/rate_number_widget.dart';

class FilterRatingWidget extends StatelessWidget {
  const FilterRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 20.0),
          child: Text(AppStrings.rating,style: TextStyle(color: AppColors.blackText,fontWeight: FontWeight.bold,),),
        ),
        SizedBox(height: 2.h,),
        const Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20),
          child:  SizedBox(


              child: RateNumberWidget()),
        ),
      ],
    );
  }
}
