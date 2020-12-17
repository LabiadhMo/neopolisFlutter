import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/constants/textStyles.dart';
import 'package:music_player/screens/login/login.dart';
import 'package:music_player/screens/widgets/button.dart';
import 'package:music_player/screens/widgets/customDropDown.dart';
import 'package:music_player/screens/widgets/textinput.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('subscription')),
        backgroundColor: Color(0xff3E2F8F),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/registerBackground.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            CustomTextField(
              hintText: 'First Name*',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomTextField(
              hintText: 'Last Name*',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomTextField(
              hintText: 'Email',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomTextField(
              hintText: 'Phone Number*',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomTextField(
              hintText: 'Password*',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomTextField(
              hintText: 'Confirm Password*',
              inputType: TextInputType.name,
              isPassword: false,
              labeled: true,
            ),
            CustomDropDown(
              title: 'Religion',
            ),
            CustomDropDown(
              title: 'Preferred Bible Version',
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (v) {},
                  ),
                  Text(
                    'choice one',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: Checkbox(
                      value: false,
                      onChanged: (v) {},
                      focusColor: kprimaryColor,
                      hoverColor: kprimaryColor,
                    ),
                  ),
                  Text(
                    'choice two',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                'By registration ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            Center(
              child: Text(
                'I agree to the Terms of Use and Privacy Policy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            CustomButton(
                onPressedFn: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                buttonContent: 'Connect')
          ],
        ),
      ),
    );
  }
}
