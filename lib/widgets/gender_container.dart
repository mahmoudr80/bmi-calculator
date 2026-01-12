
import 'package:flutter/material.dart';
import 'package:testing_app/widgets/style_widget.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({super.key,required this.myIcon,required this.gender, required this.onTap,required this.color});

 final IconData myIcon ;
 final String gender ;
 final void Function() onTap;
 final Color color;


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 149,
        width: 144,
        decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(12), color: color,),
        child: Column(
          children: [
            Icon(myIcon,color: Colors.white,size: 120,),
            MyTextStyle(mytext: gender)
          ],
        ),
      ),

    );
  }

}

