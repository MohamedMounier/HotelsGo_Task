import 'package:flutter/material.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage, required this.onRefresh});
  final String errorMessage;
  final Function onRefresh;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$errorMessage , Kindly refresh screen and make sure you are connected to the internet"),
        const SizedBox(height: 15,),
        ElevatedButton(onPressed: ()=>onRefresh(), child: const Text(AppStrings.refresh))
      ],
    ));
  }
}
