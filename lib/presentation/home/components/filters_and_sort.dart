import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';
import 'package:hotelsgo_task/presentation/widgets/custom_text_with_icon.dart';

class FilterAndSortWidget extends StatelessWidget {
  const FilterAndSortWidget({super.key, required this.onFilterTapped, required this.onSortTapped});
  final Function onFilterTapped;
  final Function onSortTapped;

  @override
  Widget build(BuildContext context) {
    return  Container(
      // width: 100.w-40,
      padding: EdgeInsets.symmetric(vertical: 3.h),
      decoration: const BoxDecoration(color: Colors.white,
      borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
        boxShadow: [
          BoxShadow(offset: Offset(.7, .0),
          blurRadius: 20,color: Colors.grey,
            spreadRadius: 2
          )
        ]
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              onTap: (){
                onFilterTapped();
              },
              child: const CustomTextWithIcon(iconData: Icons.filter_list,text: AppStrings.filters)),
          InkWell(
              onTap: (){
                onSortTapped();
              },
              child: const CustomTextWithIcon(iconData: Icons.sort,text: AppStrings.sort)),
        ],
      ),
    );
  }
}
