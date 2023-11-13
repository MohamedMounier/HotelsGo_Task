import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/widgets/stars_square.dart';

import '../../resources/app_colors.dart';

class FilterStarsWidget extends StatelessWidget {
  const FilterStarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 20.0),
          child: Text("Hotel Class",style: TextStyle(color: AppColors.blackText,fontWeight: FontWeight.bold,),),
        ),
        SizedBox(height: 2.h,),
        const Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20),
          child: SizedBox(
              child:StarsSquare()),
        ),
      ],
    );
  }
}
