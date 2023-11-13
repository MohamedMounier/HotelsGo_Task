import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../widgets/custom_loading_animattion.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget( {super.key, required this.getHotels});
  final Function getHotels;

  @override
  Widget build(BuildContext context) {
    return  RefreshIndicator(
      onRefresh: ()async{
        await getHotels();
      } ,
      child: Column(
        children: [
      Container(
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
      child:const ShimmerPost(height: 50),
    ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children:  List.generate(5, (index) =>  const ShimmerPost(height: 200)),
            ),
          ),
        ],
      ),
    );
  }
}
