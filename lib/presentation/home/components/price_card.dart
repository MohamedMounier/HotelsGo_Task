import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({super.key, required this.price, required this.isLowest});
  final String price ;
  final bool isLowest ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),

      padding:  const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.withOpacity(.4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: isLowest,
                replacement: const SizedBox(),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.lightBlue,
                  ),
                  child: Text("Our Lowest Price",style: TextStyle(fontSize: 15.dp,fontWeight: FontWeight.w400,color: AppColors.containerGreyText),),
                ),
              ),
              SizedBox(height: 1.h,),
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: "\$ ",style: TextStyle(color: AppColors.lighterGreen,fontSize: 20.dp,fontWeight: FontWeight.bold)),
                  TextSpan(text: price,style: TextStyle(color: AppColors.lighterGreen,fontSize: 25.dp,fontWeight: FontWeight.bold))

                ]
              )),
              SizedBox(height: 1.h,),
              const Text(AppStrings.renaissance)
            ],
          ),
          Row(
            children: [
              Text("View Deal",style: TextStyle(color: AppColors.black,fontSize: 20.dp,fontWeight: FontWeight.bold),),
              const SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios_outlined,size: 20.dp,color: AppColors.black,)
            ],
          )
        ],
      ),
    );
  }
}
