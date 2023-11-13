import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/data/models/hotel_model.dart';
import 'package:hotelsgo_task/presentation/home/components/image_card.dart';
import 'package:hotelsgo_task/presentation/home/components/rating_row.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';
import 'price_card.dart';
import 'review_and_address_widget.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotelModel, required this.isLowestPrice});
  final HotelModel hotelModel;
  final bool isLowestPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Card(

        child: Container(

          decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.circular(5),

            boxShadow: [
              BoxShadow(offset: const Offset(.1, .0),
                  blurRadius: 15,color: Colors.grey.shade300,

                  spreadRadius: 2
              ),
              // BoxShadow(offset: Offset(0, -.2),
              //     blurRadius: 10,color: Colors.grey.shade300,
              //
              //     spreadRadius: 1
              // )
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCard(imageUrl: hotelModel.imageUrl),
              SizedBox(height: 1.h,),
              RatingRow(stars: hotelModel.stars),
              SizedBox(height: 1.5.h,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(hotelModel.name,style: TextStyle(color: AppColors.black,fontSize: 20.dp,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 1.h,),
              ReviewAndAddressWidget(review: hotelModel.review,address: hotelModel.address,reviewScore: '${hotelModel.reviewScore}'),
              PriceCard(price: "${hotelModel.price}", isLowest: isLowestPrice,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("More Prices",style: TextStyle(color: AppColors.subtitleGrey,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 10.dp),)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
