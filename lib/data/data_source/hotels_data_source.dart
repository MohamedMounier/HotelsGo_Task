import 'dart:convert';
import 'package:http/http.dart' as http;


abstract class HotelsDataSource{
  Future<(int,List)> getHotels();
}

class HotelsDataSourceImpl implements HotelsDataSource{
  @override
  Future<(int,List)> getHotels() async{
    final result=await http.get(Uri.parse("https://www.hotelsgo.co/test/hotels"));
    final List decodedResult=jsonDecode(result.body);
    return   (result.statusCode,decodedResult);

  }

}