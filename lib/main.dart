import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hotelsgo_task/presentation/home/home_screen.dart';

void main() {
  runApp(const MyApp(

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, deviceType) {
        return LayoutBuilder(
          builder: (context, constraints) {

            return const MaterialApp(

              title: 'Hotelsgo',
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}


