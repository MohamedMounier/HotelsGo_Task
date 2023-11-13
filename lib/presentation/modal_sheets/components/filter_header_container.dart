import 'package:flutter/material.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

import '../../resources/app_strings.dart';

class FilterHeaderWidget extends StatelessWidget {
  const FilterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        titleAlignment: ListTileTitleAlignment.center,
        leading: const  Text(

          AppStrings.reset,
          style:  TextStyle(
              color: AppColors.subtitleGrey,
              decoration:TextDecoration.underline,
              fontWeight: FontWeight.bold
          ),
        ),
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
    );
  }
}
