import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reasablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class resultpage extends StatelessWidget {
  final String resulttext;
  final String bmi_result;
  final String interpretation;

  resultpage(this.resulttext, this.bmi_result, this.interpretation);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 50,
            title: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'YOUR RESULT ',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Reasablecard(
                  KInactivecolor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resulttext,
                        style: KResultTextstyle,
                      ),
                      Text(
                        bmi_result,
                        style: KBMITextstyle,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        interpretation,
                        style: Klargebuttomtextstyle,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'RE_CALCULATE',
                      style: Klargebuttomtextstyle,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                  height: KButtomContainerheight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Kcolor_of_the_buttom,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
