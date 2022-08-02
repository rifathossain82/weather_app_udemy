import 'package:get/get.dart';
import 'package:weather_app/src/controller/locationController.dart';
import 'package:weather_app/src/controller/weatherController.dart';
import 'package:weather_app/src/util/app_constants.dart';
import 'package:weather_app/src/util/color.dart';
import 'package:weather_app/src/util/exports.dart';
import 'package:weather_app/src/view/screen/loading_screen.dart';
import 'package:weather_app/src/view/screen/weather_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(LocationController());
  Get.put(WeatherController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: kMainColor,
        primarySwatch: colorCustom,
      ),
      title: AppConstants.appName,
      home: LoadingScreen(),
    );
  }
}
