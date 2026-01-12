

import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff24263B)
        ,iconTheme: IconThemeData(color: Colors.red)
        ,appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
            )),
      ),
    );
  }
}
