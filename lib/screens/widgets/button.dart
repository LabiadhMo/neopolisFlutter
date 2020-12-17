import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressedFn;
  final String buttonContent;
  final AlignmentGeometry btnAlignment;

  const CustomButton(
      {Key key,
      @required this.onPressedFn,
      @required this.buttonContent,
      this.btnAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: btnAlignment == null ? Alignment.center : btnAlignment,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              blurRadius: 30,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * .7445,
        height: MediaQuery.of(context).size.height * .06075,
        child: RaisedButton(
          color: Color(0xFF1CBDDD),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0)),
          onPressed: onPressedFn,
          child: Text(
            buttonContent,
            style: TextStyle(
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: 18,
                height: 1.22,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
