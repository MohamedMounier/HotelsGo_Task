import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/resources/app_colors.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.darkGrey.withOpacity(.4),
      radius: 20.dp,
      child: IconButton(onPressed: (){
        setState(() {
          isPressed=!isPressed;
        });
      }, icon: Icon(Icons.favorite_border_outlined,color: isPressed?Colors.red:Colors.white.withOpacity(.7),)),

    );
  }
}
