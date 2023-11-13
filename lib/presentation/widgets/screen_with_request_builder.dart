import 'package:flutter/cupertino.dart';
import 'package:hotelsgo_task/core/enums.dart';

class RequestHandlerScreen extends StatelessWidget {
  const RequestHandlerScreen({super.key, required this.statusRequest, required this.loadingWidget, required this.successWidget, required this.errorWidget});
  final StatusRequest statusRequest;
  final Widget loadingWidget;
  final Widget successWidget;
  final Widget errorWidget;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context){
      if(statusRequest==StatusRequest.loading){
        return loadingWidget;
      }else if(statusRequest==StatusRequest.success){
        return successWidget;
      }else{
        return errorWidget;
      }
    });
  }
}
