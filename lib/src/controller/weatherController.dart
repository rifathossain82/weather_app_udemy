import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:weather_app/src/controller/locationController.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/src/util/app_constants.dart';

class WeatherController extends GetxController{

  final locationController = Get.find<LocationController>();
  var currentTemperature = 0.0.obs;
  var currentConditions = 0.0.obs;
  var currentLocation = ''.obs;

  @override
  void onInit() {
    getCurrentTemperature();
    super.onInit();
  }

  Future<void> getCurrentTemperature()async{
    final response = await http.get(Uri.parse("http://api.openweathermap.org/data/2.5/weather?lat=${locationController.latitude}&lon=${locationController.longitude}&appid=${AppConstants.weatherMapApiKey}&units=metric"));
    print(response.statusCode);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      currentTemperature.value = data['main']['temp'];
      currentConditions.value = data['weather'][0]['id'];
      currentLocation.value = data['name'];
      getWeatherDisplayData();
    }
    else{
      print('No data found');
    }
  }

  WeatherDisplayData getWeatherDisplayData() {
    if (currentConditions.value < 600) {
      var bgimage='';
      return WeatherDisplayData(
        Icon(FontAwesomeIcons.cloud,size: 50,color: Colors.white,),
        AssetImage('assets/cloud.png'),
      );
    } else {
      var now = new DateTime.now();

      if (now.hour >= 15) {
        return WeatherDisplayData(
          Icon(FontAwesomeIcons.cloudMoon,size: 50,color: Colors.white,),
          AssetImage('assets/night.png'),
        );
      } else {
        return WeatherDisplayData(
          Icon(FontAwesomeIcons.cloudSun,size: 50,color: Colors.white,),
          AssetImage('assets/sunny.png'),
        );
      }
    }
  }

}

class WeatherDisplayData {
  Icon? weatherIcon;
  AssetImage? weatherImage;

  WeatherDisplayData(this.weatherIcon, this.weatherImage);
}