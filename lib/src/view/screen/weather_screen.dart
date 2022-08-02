import 'package:get/get.dart';
import 'package:weather_app/src/controller/weatherController.dart';
import 'package:weather_app/src/util/color.dart';
import 'package:weather_app/src/util/dimensions.dart';
import 'package:weather_app/src/util/exports.dart';
import 'package:weather_app/src/util/images.dart';
import 'package:weather_app/src/util/styls.dart';
import 'package:weather_app/src/view/base/reusable_text.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  @override
  void initState(){
    getData();
    super.initState();
  }

  getData(){
    final weatherDisplayData = WeatherDisplayData();
  }

  @override
  Widget build(BuildContext context) {
    final weatherController = Get.find<WeatherController>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            VerticalSpace(size.height * 0.1),
            Icon(
              Icons.sunny,
              size: size.height * 0.08,
              color: kWhite,
            ),
            VerticalSpace(size.height * 0.01),
            ReusableText(
              text: '21°',
              style: h1.copyWith(
                color: kWhite,
                fontSize: size.height * 0.1,
              ),
            ),
            VerticalSpace(size.height * 0.01),
            ReusableText(
              text: 'Bahaddarhat, Chattogram.',
              style: h1.copyWith(
                  color: kWhite
              ),
            )
          ],
        ),
      )),
    );
  }
}
