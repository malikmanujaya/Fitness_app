import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget
{
  final bool isMale;
  final double result;
  final int age;

  

  BMIResultScreen({required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
        title:const Text(
          "BMI RESULT",
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            SizedBox(
              height: 120,
            ),

            Text(
              "Gender: ${isMale? 'Male':'Female'}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "BMI Value: ${result.round()}",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Age: $age",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            
       SizedBox(
        height: 20,
       ),

    if(result < 18.5)...[
      Text("Underweight",
      style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              ),
    ] else if(result < 24.9)...[
      Text("Normal Weight",
      style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,

              ),
              )

    ]else if(result < 29.9)...[
      Text("Overweight",
      style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,

              ),
              )

    ]else if(result < 34.9)...[
      Text("OBESE",
      style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,

              ),
              )

    ]else if(result > 35)...[
      Text("Extremely OBESE",
      style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,

              ),
      )
    ],
    SizedBox(
      height: 20,
    ),
    Image(image: AssetImage('assets/bmi-chart.jpg')),

 
    


            
          ],
        ),
        
      ),
      
    );
  }
}