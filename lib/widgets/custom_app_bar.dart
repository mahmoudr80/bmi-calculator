

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.withLeading = false});

  final bool withLeading;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Color(0xff24263B),
      title: Text("BMI Calculator" ,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
            color: Colors.white),),
      centerTitle: true,
      leading:withLeading? InkWell(
        onTap: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back)) : null
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);
}
