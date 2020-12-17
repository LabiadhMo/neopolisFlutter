import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:validators/validators.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final bool isPassword;
  final TextEditingController widgetCustomController;
  final bool labeled;
  const CustomTextField(
      {Key key,
      this.hintText,
      this.inputType,
      this.isPassword = false,
      this.widgetCustomController,
      this.labeled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: widgetCustomController,
        keyboardType: inputType != null ? inputType : TextInputType.name,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 20.0,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: kprimaryColor,
              width: 2.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            gapPadding: 1.0,
            borderSide: BorderSide(
              color: kprimaryColor,
              width: 2.0,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.grey,
          ),
          labelText: labeled ? hintText : null,
          labelStyle: const TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.grey,
          ),
          suffixIcon: isPassword
              ? Icon(
                  Icons.remove_red_eye,
                  color: kprimaryColor,
                )
              : null,
        ),
      ),
    );
  }
}
