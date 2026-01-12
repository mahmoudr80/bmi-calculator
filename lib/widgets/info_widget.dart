

import 'package:flutter/material.dart';
import 'package:testing_app/widgets/style_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key,required this.info,required this.value, required this.increasing, required this.decreasing,});

  final String info;
  final int value;
 final void Function() increasing;
  final void Function() decreasing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 166,
      decoration: BoxDecoration(  color: Color(0xff333244),borderRadius: BorderRadiusGeometry.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: MyTextStyle(mytext: info),
          ),
          Text(value.toString(),style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w700,fontSize: 40),),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                FloatingActionButton.small(
                  heroTag: "$info 1",onPressed:decreasing,child: Icon(Icons.remove,color: Colors.white,),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100))
                  ,backgroundColor: Color(0xff8B8C9E),),
                FloatingActionButton.small(
                  heroTag: "$info 2",onPressed:increasing,child: Icon(Icons.add,color: Colors.white,)
                  ,shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100)),
                  backgroundColor: Color(0xff8B8C9E),),
              ],
            ),
          )
        ],
      ),
    );
  }

}