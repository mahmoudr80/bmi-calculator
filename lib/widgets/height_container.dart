

import 'package:flutter/material.dart';
import 'package:testing_app/widgets/style_widget.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({super.key, required this.height,required this.onChanged});
  final int height ;
  final void Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 200,
      decoration: BoxDecoration(color: Color(0xff333244),
          borderRadius: BorderRadiusGeometry.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 27),
            child: MyTextStyle(mytext: "Height"),
          ),
          Text.rich(TextSpan(children: [TextSpan(text:height.toString(),style:
          TextStyle(fontSize: 60,fontWeight: FontWeight.w700))
            ,TextSpan(text: "cm")]),style: TextStyle(color: Colors.white),),
          Slider(value: height.toDouble(), onChanged:onChanged,min: 0,max: 300,)
        ],
      ),

    );
  }



}


