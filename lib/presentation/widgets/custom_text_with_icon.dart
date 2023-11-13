import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class CustomTextWithIcon extends StatelessWidget {
  const CustomTextWithIcon({super.key, required this.iconData, required this.text});
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,color: AppColors.blue,),
        const SizedBox(width: 15,),
        Text(text,style:  const TextStyle(color: AppColors.blue),)
      ],
    );
  }
}
