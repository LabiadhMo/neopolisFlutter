import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/configs/config.dart';

class TextStyles {
  static TextStyle kBasicAppBarTextStyle = TextStyle(
    color: Color(0xFF8D8D8D),
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
  );
  static TextStyle kcardTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Montserrat',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static TextStyle kNomralTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: SizeConfig.blockSizeHorizontal * 3,
  );
  static TextStyle kButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: SizeConfig.safeBlockHorizontal * 3.5,
  );
}
