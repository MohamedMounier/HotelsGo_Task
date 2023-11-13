import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/core/utils/app_lists.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';

class SortByModalBottomSheet extends StatefulWidget {
  const SortByModalBottomSheet({super.key});

  @override
  SortByModalBottomSheetState createState() => SortByModalBottomSheetState();
}

class SortByModalBottomSheetState extends State<SortByModalBottomSheet> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),

      ),
      child: Column(

        children: [
          Container(
            decoration: BoxDecoration(

                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset:  const Offset(2, -2), // Negative offset for top left shadow
                      blurRadius: 4,
                      spreadRadius: 7,
                      blurStyle: BlurStyle.outer
                  ),
                ]
            ),

            child: ListTile(
              leading: const SizedBox(),
              title: const Text(
                AppStrings.sortBy,
                textAlign: TextAlign.center,
                style:  TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold
                ),
              ),

              trailing: IconButton(
                icon: const Icon(Icons.close,color: AppColors.black,),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => ListTile(
                    title: Text(
                      AppLists.sortOptions[index],
                      style: const TextStyle(
                        color: AppColors.black,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedOption = AppLists.sortOptions[index];
                      });
                    },
                    trailing: selectedOption == AppLists.sortOptions[index]
                        ? const Icon(Icons.check, color: AppColors.blue)
                        : null,
                  ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: AppLists.sortOptions.length)

          // Add more list tiles for additional options
        ],
      ),
    );
  }
}
