import 'package:flutter/material.dart';
import 'package:hotelsgo_task/core/utils/app_lists.dart';

class RateNumberWidget extends StatefulWidget {
  const RateNumberWidget({super.key});

  @override
  State<RateNumberWidget> createState() => _RateNumberWidgetState();
}

class _RateNumberWidgetState extends State<RateNumberWidget> {
  @override
  Widget build(BuildContext context) {
    // return ListView.separated(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context,index){
    //   return  Container(
    //     padding: const EdgeInsets.all(15),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(5),
    //       color: AppLists.ratesColorsList[index]
    //     ),
    //     child: Text("${AppLists.ratesList[index]} +",style: TextStyle(color:Colors.white ),),
    //   );
    // }, separatorBuilder: (context,index)=>SizedBox(width: .4.w,), itemCount: AppLists.ratesList.length);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(AppLists.ratesList.length, (index) => Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppLists.ratesColorsList[index]
      ),
      child: Text("${AppLists.ratesList[index]} +",style: const TextStyle(color:Colors.white ),),
    )),
    );
  }
}
