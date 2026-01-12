

import 'package:flutter/material.dart';
import 'package:testing_app/widgets/custom_app_bar.dart';


class ResultScreen extends StatelessWidget {
   ResultScreen({super.key, required this.result});
final double result;
String statusBody="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(withLeading: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Result",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(12) ,color: Color(0xff333244),),
                child:
                Column(
                  spacing:20 ,
                  children: [
                    Text(_getStatusText(result),style: TextStyle(fontSize: 20,color: Colors.green),),
                    Text(result.toStringAsFixed(2),style: TextStyle(color: Colors.white,fontSize: 40),),
                    Text(statusBody,
                      style: TextStyle(color: Color(0xff8B8C9E),
                          fontSize: 16,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  String _getStatusText(double value)
  {
    if(value <18.5)
    {
      statusBody = "Body weight is considered too low. May indicate malnutrition, nutrient deficiencies, or underlying health issues. Can increase risk of weakened immunity, osteoporosis, and anemia.";
      return "Underweight";
    }
    else if (result >= 18.5 && result < 25 )
      {
        statusBody = "Body weight is considered healthy for height. Associated with lower risk of chronic diseases like heart disease, diabetes, and high blood pressure.";
        return "Normal";
      }
    else if (result >= 25 && result < 30 )
    {
      statusBody = "Body weight is above the healthy range. Higher risk of cardiovascular diseases, type 2 diabetes, joint problems, and certain cancers.";
      return "Overweight";
    }
    else{
      statusBody = "Body weight is significantly above the healthy range. Strongly associated with higher risk of heart disease, stroke, diabetes, certain cancers, and reduced life expectancy.";
      return "Obese";
    }
  }


}
