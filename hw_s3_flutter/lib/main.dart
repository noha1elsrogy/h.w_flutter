import 'package:flutter/material.dart';
import 'package:hw_s3_flutter/MaleFamaleCard.dart';
import 'package:hw_s3_flutter/heigh_section.dart';
import 'package:hw_s3_flutter/weight%20and%20heigh%20section.dart';

void main() {
  runApp(S3());
}

class S3 extends StatelessWidget {
  const S3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff03051a),
        appBar: AppBar(
          backgroundColor: Color(0xff04061c),
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              MaleFemale(),
              SizedBox(
                height: 10,
              ),
              HeightItem(),
              SizedBox(
                height: 10,
              ),
              WeightAndHeghtSection(),
              SizedBox(
                height: 41,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 80),
                    primary: Color(0xffed0c53),
                    shape: BeveledRectangleBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
