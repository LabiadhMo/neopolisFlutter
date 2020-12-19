import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class CustomDropDown extends StatelessWidget {
  final String title;
  final List<String> items;
  const CustomDropDown({
    Key key,
    this.title,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: kprimaryColor),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<int>(
          underline: SizedBox(),
          hint: Text(
            title,
            style: TextStyle(color: kGrey),
          ),
          value: null,
          onChanged: (value) {},
          items: [
            DropdownMenuItem<int>(
              value: 1,
              child: Text('1111'),
            ),
            DropdownMenuItem<int>(
              value: 1,
              child: Text('22222'),
            )
          ]),
    );
  }
}
