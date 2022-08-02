import 'package:weather_app/src/util/exports.dart';

class ReusableText extends StatelessWidget {
  ReusableText({Key? key, required this.text, required this.style}) : super(key: key);

  String text;
  TextStyle style;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onPressed != null){
          onPressed;
        }
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
