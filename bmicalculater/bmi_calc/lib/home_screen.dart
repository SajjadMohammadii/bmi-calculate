import 'package:bmi_calc/widgets/background_left_shape.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();

  double resultbmi = 0;
  String resulttext = '';
  double widthgood = 100;
  double widthbad = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          ' تو چنده؟ BMI',
          style: TextStyle(color: blackgg),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2, color: orangeback)),
                    onPressed: (() {}),
                    child: TextField(
                      controller: weightcontroller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: orangeback,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: orangeback.withOpacity(.4),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: orangeback,
                      ),
                    ),
                    onPressed: () {},
                    child: TextField(
                      controller: heightcontroller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: orangeback,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: orangeback.withOpacity(.4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                final weight = double.parse(weightcontroller.text);
                final height = double.parse(heightcontroller.text);
                setState(() {
                  resultbmi = weight / (height * height);
                  if (resultbmi > 25) {
                    resulttext = 'شما اضافه وزن دارید';
                    widthbad = 300;
                    widthgood = 50;
                  } else if (resultbmi >= 18.5 && 25 >= resultbmi) {
                    resulttext = 'وزن شما نرمال است';
                    widthbad = 50;
                    widthgood = 50;
                  } else {
                    resulttext = 'وزن شما کمتر از حد نرمال است';
                    widthbad = 20;
                    widthgood = 20;
                  }
                });
              },
              child: Text(
                'محاسبه کن',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${resultbmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              '$resulttext',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: orangeback),
            ),
            Leftshape(width: widthgood),
            SizedBox(height: 20),
            Rightshape(
              width: widthbad,
            )
          ],
        ),
      ),
    );
  }
}
