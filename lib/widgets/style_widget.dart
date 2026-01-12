

import 'package:flutter/material.dart';

class MyTextStyle extends StatelessWidget {
  const MyTextStyle({super.key,required this.mytext});
final String mytext;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(mytext,
        style: TextStyle(color: Color(0xff8B8C9E),fontSize: 20),
      ),
    );
  }
}
