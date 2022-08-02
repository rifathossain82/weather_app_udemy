import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationController extends GetxController{
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;

  @override
  void onInit() {
    getCurrentPosition();
    super.onInit();
  }

  Future<void> getCurrentPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    }
    else {
      await Geolocator.getCurrentPosition().then((position){
        latitude.value = position.latitude;
        longitude.value = position.longitude;
      }).catchError((e) => print(e));
    }

  }
}