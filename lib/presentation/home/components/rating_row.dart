import 'package:flutter/cupertino.dart';
import 'package:hotelsgo_task/presentation/resources/app_strings.dart';
import 'package:hotelsgo_task/presentation/widgets/rating.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.stars});
  final int stars;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          RatingStars(stars: stars),
          const SizedBox(width: 15,),
          const Text(AppStrings.hotel)
        ],
      ),
    );
  }
}
