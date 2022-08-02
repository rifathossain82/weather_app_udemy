import 'package:flutter/material.dart';

Color kWhite=Colors.white;
Color kBlack=Colors.black;
Color kGrey=Colors.grey;
Color kBlue=Colors.blue;
Color kMainColor=Colors.blueGrey.shade900;


Color kGradiant1stColor= Color(0xff002233);
Color kGradiant2ndColor=Colors.deepPurple;

Color kPrimaryTextColor = Colors.black87;
Color kSecondaryTextColor = Colors.black38;


Map<int, Color> color =
  const {
    50:Color.fromRGBO(0, 34, 51, .1),
    100:Color.fromRGBO(0, 34, 51, .2),
    200:Color.fromRGBO(0, 34, 51, .3),
    300:Color.fromRGBO(0, 34, 51, .4),
    400:Color.fromRGBO(0, 34, 51, .5),
    500:Color.fromRGBO(0, 34, 51, .6),
    600:Color.fromRGBO(0, 34, 51, .7),
    700:Color.fromRGBO(0, 34, 51, .8),
    800:Color.fromRGBO(0, 34, 51, .9),
    900:Color.fromRGBO(0, 34, 51, 1),
  };

MaterialColor colorCustom = MaterialColor(0xFF002233, color);
