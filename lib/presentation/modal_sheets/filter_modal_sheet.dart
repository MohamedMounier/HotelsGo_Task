import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/modal_sheets/components/filter_distance_location_and_btn.dart';
import 'package:hotelsgo_task/presentation/modal_sheets/components/filter_header_container.dart';
import 'package:hotelsgo_task/presentation/modal_sheets/components/filter_price_range.dart';
import 'package:hotelsgo_task/presentation/modal_sheets/components/filter_rating_widget.dart';
import 'package:hotelsgo_task/presentation/modal_sheets/components/filter_starts_widget.dart';

class FilterModelSheet extends StatelessWidget {
  const FilterModelSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(

      margin:MediaQuery.of(context).viewInsets,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),

      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            FadeInDown(
                duration: const Duration(milliseconds: 300),
                child: const FilterHeaderWidget()),
           SizedBox(height: 3.h,),
            /// Price Range

              FadeInLeft(
                duration: const Duration(milliseconds: 300),

                child: const FilterPriceRange()),
            SizedBox(height: 3.h,),
            /// Filter Widget
            FadeInLeft(
                duration: const Duration(milliseconds: 350),
                child: const FilterRatingWidget()),
            SizedBox(height: 3.h,),

            /// stars widget
            FadeInLeft(
                duration: const Duration(milliseconds: 400),
                child: const FilterStarsWidget()),
            SizedBox(height: 3.h,),
            /// Location , Distance ,Show Results Button
            FadeInRight(
                duration: const Duration(milliseconds: 400),
                animate: true,
                child: const FilterDistanceAndButtonAndLocation()),
            SizedBox(height: 1.h,),
          ],
        ),
      ),
    );
  }
}
