import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/Resultpage.dart';
import 'package:flutter_application_12/colors.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int weight = 74;
  int height = 176;
  int age = 24;
  bool isMale = true;
  double result = 0.0;

  String getClass(val) {
    if (val >= 17 && val <= 18.5) {
      return 'Mild Thinness';
    } else if (val > 18.5 && val < 24) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBg,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              )),
          centerTitle: true,
          title: Text('Bmindex',
              style: TextStyle(fontSize: 32, color: AppColors.white)),
          backgroundColor: AppColors.scaffoldBg,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            (isMale) ? AppColors.red : AppColors.containerBg),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: AppColors.white,
                              size: 100,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Male',
                            style: TextStyle(
                                fontSize: 25, color: AppColors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (!isMale) ? AppColors.red : AppColors.containerBg),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: AppColors.white,
                            size: 90,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Female',
                          style:
                              TextStyle(fontSize: 25, color: AppColors.white)),
                    ],
                  ),
                ),
              )),
            ]),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containerBg),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 25)),
                      Text('$height CM',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 25)),
                      SizedBox(height: 15),
                      Slider(
                        activeColor: AppColors.red,
                        inactiveColor: AppColors.white,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        max: 250,
                        min: 0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.containerBg),
                        child: Column(
                          children: [
                            Center(
                                child: Text('Weight',
                                    style: TextStyle(
                                        fontSize: 33, color: AppColors.white))),
                            Text('$weight',
                                style: TextStyle(
                                    fontSize: 33, color: AppColors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: AppColors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor: AppColors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.containerBg),
                      child: Column(
                        children: [
                          Text('Age',
                              style: TextStyle(
                                  fontSize: 33, color: AppColors.white)),
                          Text('$age',
                              style: TextStyle(
                                  fontSize: 33, color: AppColors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: AppColors.white,
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                backgroundColor: AppColors.white,
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.red),
                            onPressed: () {
                              double result =
                                  weight / (height * height * .0001);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Resultpage(
                                  result: result,
                                ),
                              ));
                            },
                            child: const Text(
                              'Calculate',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
