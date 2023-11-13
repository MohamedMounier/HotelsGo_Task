import 'package:hotelsgo_task/core/enums.dart';
import 'package:hotelsgo_task/data/data_source/hotels_data_source.dart';
import 'package:hotelsgo_task/data/models/hotel_model.dart';

abstract class HotelsRepo{
  Future<(StatusRequest,List<HotelModel>,String)> getHotels();

}
class HotelsRepoImpl implements HotelsRepo{
  final HotelsDataSource hotelsDataSource;

  HotelsRepoImpl(this.hotelsDataSource);

  @override
  Future<(StatusRequest,List<HotelModel>,String)> getHotels()async {
    try{
      final result = await hotelsDataSource.getHotels();
      if(result.$1==200||result.$1==201){
        return (StatusRequest.success,List<HotelModel>.from(result.$2.map((e) => HotelModel.fromJson(e))),'');
      }else{
        return (StatusRequest.error,const <HotelModel>[],'Server Error has Occurred ${result.$1}');
      }
    }catch(error){
      return (StatusRequest.error,const <HotelModel>[],'Server Error has Occurred $error');

    }


  }

}