
import 'package:flutter/material.dart';
import 'package:testing_app/screens/result_screen.dart';
import 'package:testing_app/widgets/custom_app_bar.dart';
import 'package:testing_app/widgets/height_container.dart';
import 'package:testing_app/widgets/info_widget.dart';

import '../widgets/gender_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool _isMale =false;
   bool _isFemale =false;
   int height = 150;
   int weight = 60;
   int age = 18;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21,right: 20),
              child: Row(
                children: [
                  Expanded(child: GenderContainer( myIcon:  Icons.male,gender: "male",onTap:  (){
                    setState(() {
                      _isMale = true;
                      _isFemale= false;
                    });
                  },color: _isMale?Colors.red.shade800:Color(0xff333244),)),
                  SizedBox(width: 9,),
                  Expanded(child: GenderContainer( myIcon:  Icons.female,gender: "female",onTap:  (){
      
                    setState(() {
                    _isMale=false;
                    _isFemale=true;
                    });
                  },color:_isFemale?Colors.lightBlue.shade800: Color(0xff333244))),
                ]
      
              ),
            ),
            SizedBox(height: 25,),
            HeightContainer(height: height,onChanged: (value){
              setState(() {
                height=value.toInt();
              });
            },),
            SizedBox(height: 29,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: InfoWidget(info: "Weight", value: weight,increasing: (){
                    if(weight<200) {
                      setState(() {
                        weight++;
                      });
                    }
                  },decreasing: (){
                    if(weight>0) {
                      setState(() {
                        weight--;
                      });
                    }
                  },)),
                  SizedBox(width: 9,),
                  Expanded(child: InfoWidget(info: "Age", value: age,increasing: (){
                    if(age<100) {
                      setState(() {
                        age++;
                      });
                    }
                  },decreasing: (){
                    if(age>0) {
                      setState(() {
                        age--;
                      });
                    }
                  })),
                ]
              ),
            )
      
          ],
        ),
        bottomNavigationBar:
        InkWell(
          onTap: (){
            double height2=(height/100);
            double result = weight/(height2*height2);
            Navigator.push(context, MaterialPageRoute(builder: (value)=>ResultScreen(result: result,)));
          }
          ,child:
        Container(
          width: 360,
          height: 90,
          decoration: BoxDecoration(color: Color(0xffE83D67),borderRadius: BorderRadiusGeometry.circular(12)),
          alignment:Alignment.center,
          child: Text("Calculate", style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.white),),
      
        )
        ,),
      
      
      ),
    );
  }
}
