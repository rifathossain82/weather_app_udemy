import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:weather_app/src/util/color.dart';
import 'package:weather_app/src/util/exports.dart';
import 'package:weather_app/src/view/screen/weather_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      Get.to(() => WeatherScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kGradiant1stColor,
              kGradiant2ndColor
            ]
          )
        ),
        child: Center(
          child: SpinKitRipple(
            color: kWhite,
            size: 150,
            duration: Duration(seconds: 3),
          ),
        ),
      ),
    );
  }
}
