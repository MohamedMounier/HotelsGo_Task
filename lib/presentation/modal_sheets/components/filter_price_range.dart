import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'package:hotelsgo_task/presentation/widgets/max_price_per_square.dart';

class FilterPriceRange extends StatefulWidget {
  const FilterPriceRange({super.key});

  @override
  State<FilterPriceRange> createState() => _FilterPriceRangeState();
}

class _FilterPriceRangeState extends State<FilterPriceRange> {
  int chosenPrice=320;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Price Per Night",style: TextStyle(color: AppColors.black,fontWeight: FontWeight.w500),),
              MaxPriceSquare(maxPrice: "$chosenPrice")
            ],
          ),
          SizedBox(height: 3.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: SizedBox(
                width: 80.w-40,
                child: CupertinoSlider(

                    min: 30,
                    max: 1000,
                    value: chosenPrice.toDouble(), onChanged: (v){
                      setState(() {
                        chosenPrice=v.truncate();
                      });
                }),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: 80.w-40,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 30",style: TextStyle(color: AppColors.subtitleGrey),),
                    Text("\$ 1000",style: TextStyle(color: AppColors.subtitleGrey)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
