
import 'package:flutter/material.dart';
import 'package:hotelsgo_task/core/enums.dart';
import 'package:hotelsgo_task/data/data_source/hotels_data_source.dart';
import 'package:hotelsgo_task/data/models/hotel_model.dart';
import 'package:hotelsgo_task/domain/hotels_repo.dart';
import 'package:hotelsgo_task/presentation/home/components/loading_widget.dart';
import 'package:hotelsgo_task/presentation/home/components/success_hotels_ui.dart';
import 'package:hotelsgo_task/presentation/widgets/screen_with_request_builder.dart';

import 'components/error_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HotelsRepo hotelsRepo=HotelsRepoImpl(HotelsDataSourceImpl());
  StatusRequest statusRequest=StatusRequest.loading;
   List<HotelModel>hotelsList=[];
   String errorMessage='';


  Future getHotels()async{
    if(statusRequest!=StatusRequest.loading){
      setState(() {
        statusRequest=StatusRequest.loading;
      });
    }
    errorMessage='';
    final hotelsRequest=await hotelsRepo.getHotels();
    if(hotelsRequest.$1==StatusRequest.success){
      setState(() {
        hotelsList=hotelsRequest.$2;
        errorMessage=hotelsRequest.$3;
        statusRequest=StatusRequest.success;
      });
    }else if(hotelsRequest.$1==StatusRequest.error){
      setState(() {
        errorMessage=hotelsRequest.$3;
        statusRequest=StatusRequest.error;
      });
    }


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHotels();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RequestHandlerScreen(statusRequest: statusRequest,
          loadingWidget:LoadingWidget(getHotels: getHotels),
          errorWidget:  CustomErrorWidget(errorMessage: errorMessage,onRefresh: ()=>getHotels()),
            successWidget:SuccessHotelsWidget(hotelsList: hotelsList,getHotels: ()=>getHotels()),
          )

        ),
      ),
    );
  }
}
