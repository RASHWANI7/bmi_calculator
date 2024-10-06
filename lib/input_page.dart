import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reasablecard.dart';
import 'enum_gender.dart';
import 'constant.dart';
import 'result_page.dart';
import 'calculator_brain.dart';

class Input_Page extends StatefulWidget {
  @override
  State<Input_Page> createState() => _Input_PageState();
}

Color malecardcolor = KInactivecolor;
Color femalecardcolor = KInactivecolor;
int height = 180;
int weight = 60;
int age = 30;

void updatecardcolor(Gender selected_gender) {
  if (selected_gender == Gender.MALE) {
    if (malecardcolor == KInactivecolor) {
      malecardcolor = KActivecolor;
      femalecardcolor = KInactivecolor;
    }
  } else {
    malecardcolor = KInactivecolor;
  }
  if (selected_gender == Gender.FEMALE) {
    if (femalecardcolor == KInactivecolor) {
      femalecardcolor = KActivecolor;
      malecardcolor = KInactivecolor;
    }
  } else {
    femalecardcolor = KInactivecolor;
  }
}

class _Input_PageState extends State<Input_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                //the two buttons of the gender
                Expanded(
                  child: Row(
                    children: <Widget>[
                      //the male button
                      Expanded(
                        child: SafeArea(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updatecardcolor(Gender.MALE);
                              });
                            },
                            child: Reasablecard(
                              malecardcolor,
                              IconContent(FontAwesomeIcons.mars, 'MALE'),
                            ),
                          ),
                        ),
                      ),
                      //the female button
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updatecardcolor(Gender.FEMALE);
                            });
                          },
                          child: SafeArea(
                            child: Reasablecard(
                              femalecardcolor,
                              IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // the button of the height
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SafeArea(
                          child: Reasablecard(
                              KActivecolor,
                              Column(
                                children: <Widget>[
                                  Text(
                                    'HEIGHT',
                                    style: KlabelTextstyle,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                      Text(
                                        height.toString(),
                                        style: Knumbertextstyle,
                                      ),
                                      Text(
                                        'CM',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFFE8E8E8),
                                        ),
                                      )
                                    ],
                                  ),
                                  SliderTheme(
                                    data: SliderThemeData(
                                        trackHeight: 12,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 20),
                                        overlayShape: RoundSliderOverlayShape(
                                            overlayRadius: 32)),
                                    child: Slider(
                                        value: height.toDouble(),
                                        min: 110,
                                        max: 230,
                                        activeColor: (Kcolor_of_the_buttom),
                                        inactiveColor: (Color(0xFFE8E8E8)),
                                        onChanged: (double newvalue) {
                                          setState(() {
                                            height = newvalue.round();
                                          });
                                        }),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                // the buttons of the weight
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SafeArea(
                          child: Reasablecard(
                            KActivecolor,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'WEIGHT',
                                  style: KlabelTextstyle,
                                ),
                                Text(
                                  weight.toString(),
                                  style: Knumbertextstyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4C4F79),
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: Icon(
                                        color: Colors.white,
                                        FontAwesomeIcons.minus,
                                        size: 45,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4C4F79),
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(
                                        color: Colors.white,
                                        FontAwesomeIcons.plus,
                                        size: 45,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // the buttons of the age
                      Expanded(
                        child: SafeArea(
                          child: Reasablecard(
                              KActivecolor,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'AGE ',
                                    style: KlabelTextstyle,
                                  ),
                                  Text(
                                    age.toString(),
                                    style: Knumbertextstyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      FloatingActionButton(
                                        backgroundColor: Color(0xFF4C4F79),
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: Icon(
                                          color: Colors.white,
                                          FontAwesomeIcons.minus,
                                          size: 45,
                                        ),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xFF4C4F79),
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: Icon(
                                          color: Colors.white,
                                          FontAwesomeIcons.plus,
                                          size: 45,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                //the buttom of the result
                GestureDetector(
                  onTap: () {
                    CalculatorBrain calc = CalculatorBrain(height, weight);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return resultpage(calc.getresult(), calc.calculate(),
                          calc.getinterpretation());
                    }));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'CALCULATE',
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
            ),
          ),
        ),
      ),
    );
  }
}

class RoundIconbutton extends StatelessWidget {
  final Widget child;
  RoundIconbutton(this.child);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Color(0xFF4C4F55),
      child: child,
      elevation: 70,
      onPressed: () {},
    );
  }
}
