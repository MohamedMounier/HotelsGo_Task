import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/data/models/hotel_model.dart';

import '../../modal_sheets/filter_modal_sheet.dart';
import '../../modal_sheets/sort_modal_sheet.dart';
import 'filters_and_sort.dart';
import 'hotel_card.dart';

class SuccessHotelsWidget extends StatefulWidget {
   const SuccessHotelsWidget(
      {super.key, required this.getHotels, required this.hotelsList});

  final Function getHotels;
  final List<HotelModel> hotelsList;

  @override
  State<SuccessHotelsWidget> createState() => _SuccessHotelsWidgetState();
}

class _SuccessHotelsWidgetState extends State<SuccessHotelsWidget> {
  int chosenPrice=0;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await widget.getHotels();
      },
      child: Stack(
        children: [
          /// Hotels List Widget
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListView.builder(
                itemCount: widget.hotelsList.length,
                itemBuilder: (context, index) {
                  return FadeInLeft(
                      animate: true,
                      duration: Duration(milliseconds: (index * 20) + 300),
                      child: HotelCard(
                          hotelModel: widget.hotelsList[index],
                          isLowestPrice: widget.hotelsList[index].price ==
                              widget.hotelsList
                                  .reduce((a, b) => a.price < b.price ? a : b)
                                  .price));
                }),
          ),

          /// Filter And Sort  Container

          Positioned(
              child: FilterAndSortWidget(
            onFilterTapped: () => showModalBottomSheet(
              isScrollControlled: true,

              context: context,
              builder: (context) => const FilterModelSheet(),
              backgroundColor: Colors.transparent,
            ),
            onSortTapped: () => showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
              context: context,
                builder: (context) => const SortByModalBottomSheet(),
                backgroundColor: Colors.transparent,
            ),
          )),
        ],
      ),
    );
  }
}
