import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/constants/textStyles.dart';
import 'package:music_player/home.dart';
import 'package:music_player/screens/Tracks/tracks.dart';
import 'package:music_player/screens/widgets/button.dart';
import 'package:music_player/screens/widgets/customDropDown.dart';
import 'package:music_player/screens/widgets/textinput.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')),
        backgroundColor: Color(0xff3E2F8F),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/loginbackground.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Center(
              child: Text(
                'Forget Password?',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
                onPressedFn: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Playlist()),
                  );
                },
                buttonContent: 'Connect'),
            Center(
              child: Text(
                'Don\'t have Account? CREATE ACCOUNT',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Or Connect with',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
