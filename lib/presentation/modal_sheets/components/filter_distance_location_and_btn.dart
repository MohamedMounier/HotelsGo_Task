import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class FilterDistanceAndButtonAndLocation extends StatelessWidget {
  const FilterDistanceAndButtonAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 20.0),
          child:  Text("Distance From",style: TextStyle(color: AppColors.blackText,fontWeight: FontWeight.bold,),),
        ),
        SizedBox(height: 2.h,),
        const Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20.0),
          child: Divider(),
        ),
        SizedBox(height: 2.h,),
        const Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Location",style: TextStyle(color: AppColors.blackText,fontWeight: FontWeight.w400,),),
              Row(
                children: [
                  Text("City Center",style: TextStyle(color: AppColors.subtitleGrey,fontWeight: FontWeight.w400,),),
                   SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: AppColors.subtitleGrey,)
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 2.h,),
        const Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20.0),
          child: Divider(),
        ),
        SizedBox(height: 1.h,),
        Container(
          width: 100.w,
          margin: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: ElevatedButton(onPressed: ()=>Navigator.pop(context), child: const Text("Show results")),
        ),
      ],
    );
  }
}
