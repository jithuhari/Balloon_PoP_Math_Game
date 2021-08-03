import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isImageVisibleBalloon1 = true;
  bool isImageVisibleBalloon2 = true;
  bool isImageVisibleBalloon3 = true;
  bool isImageVisibleBalloon4 = true;
  bool isImageVisibleBalloon5 = true;
  bool isImageVisibleBalloon6 = true;
  bool isImageVisibleBalloon7 = true;
  bool isImageVisibleBalloon8 = true;
  bool isImageVisibleBalloon9 = true;
  bool isImageVisibleBalloon10 = true;
  bool isImageVisibleBalloon11 = true;
  bool isImageVisibleBalloon12 = true;
  final number1 = Random().nextInt(20);
  final number2 = Random().nextInt(20);
  final number3 = Random().nextInt(20);
  final number4 = Random().nextInt(20);
  final number5 = Random().nextInt(20);
  final number6 = Random().nextInt(20);
  final number7 = Random().nextInt(20);
  final number8 = Random().nextInt(20);
  final number9 = Random().nextInt(20);
  final number10 = Random().nextInt(20);
  final number11 = Random().nextInt(20);
  final number12 = Random().nextInt(20);
  final numberDiv = Random().nextInt(5);
  Icon icon1 = Icon(Icons.check);
  Icon icon2 = Icon(Icons.check);
  Icon icon3 = Icon(Icons.check);
  Icon icon4 = Icon(Icons.check);
  Icon icon5 = Icon(Icons.check);
  Icon icon6 = Icon(Icons.check);
  Icon icon7 = Icon(Icons.check);
  Icon icon8 = Icon(Icons.check);
  Icon icon9 = Icon(Icons.check);
  Icon icon10 = Icon(Icons.check);
  Icon icon11 = Icon(Icons.check);
  Icon icon12 = Icon(Icons.check);
  Image balloonImage = Image(
      fit: BoxFit.contain, image: AssetImage('assets/images/balloonGreen.png'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            image: AssetImage('assets/images/bg.jpg'),
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Find The Numbers Which Are Divisible By $numberDiv',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number1 % numberDiv == 0) {
                          isImageVisibleBalloon1 = false;
                          icon1 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon1 = false;
                          icon1 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon1 ? balloonImage : Text(''),
                          isImageVisibleBalloon1
                              ? Center(
                                  child: Text(
                                    '$number1',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon1
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number2 % numberDiv == 0) {
                          isImageVisibleBalloon2 = false;
                          icon2 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon2 = false;
                          icon2 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon2 ? balloonImage : Text(''),
                          isImageVisibleBalloon2
                              ? Center(
                                  child: Text(
                                    '$number2',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon2
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number3 % numberDiv == 0) {
                          isImageVisibleBalloon3 = false;
                          icon3 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon3 = false;
                          icon3 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon3 ? balloonImage : Text(''),
                          isImageVisibleBalloon3
                              ? Center(
                                  child: Text(
                                    '$number3',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon3
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number4 % numberDiv == 0) {
                          isImageVisibleBalloon4 = false;
                          icon4 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon4 = false;
                          icon4 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon4 ? balloonImage : Text(''),
                          isImageVisibleBalloon4
                              ? Center(
                                  child: Text(
                                    '$number4',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon4
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number5 % numberDiv == 0) {
                          isImageVisibleBalloon5 = false;
                          icon5 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon5 = false;
                          icon5 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon5 ? balloonImage : Text(''),
                          isImageVisibleBalloon5
                              ? Center(
                                  child: Text(
                                    '$number5',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon5
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number6 % numberDiv == 0) {
                          isImageVisibleBalloon6 = false;
                          icon6 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon6 = false;
                          icon6 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon6 ? balloonImage : Text(''),
                          isImageVisibleBalloon6
                              ? Center(
                                  child: Text(
                                    '$number6',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon6
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number7 % numberDiv == 0) {
                          isImageVisibleBalloon7 = false;
                          icon7 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon7 = false;
                          icon7 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon7 ? balloonImage : Text(''),
                          isImageVisibleBalloon7
                              ? Center(
                                  child: Text(
                                    '$number7',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon7
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number8 % numberDiv == 0) {
                          isImageVisibleBalloon8 = false;
                          icon8 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon8 = false;
                          icon8 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon8 ? balloonImage : Text(''),
                          isImageVisibleBalloon8
                              ? Center(
                                  child: Text(
                                    '$number8',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon8
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number9 % numberDiv == 0) {
                          isImageVisibleBalloon9 = false;
                          icon9 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon9 = false;
                          icon9 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon9 ? balloonImage : Text(''),
                          isImageVisibleBalloon9
                              ? Center(
                                  child: Text(
                                    '$number9',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon9
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number10 % numberDiv == 0) {
                          isImageVisibleBalloon10 = false;
                          icon10 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon10 = false;
                          icon10 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon10 ? balloonImage : Text(''),
                          isImageVisibleBalloon10
                              ? Center(
                                  child: Text(
                                    '$number10',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon10
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number11 % numberDiv == 0) {
                          isImageVisibleBalloon11 = false;
                          icon11 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon11 = false;
                          icon11 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon11 ? balloonImage : Text(''),
                          isImageVisibleBalloon11
                              ? Center(
                                  child: Text(
                                    '$number11',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon11
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (number12 % numberDiv == 0) {
                          isImageVisibleBalloon12 = false;
                          icon12 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                        } else {
                          isImageVisibleBalloon12 = false;
                          icon12 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          isImageVisibleBalloon12 ? balloonImage : Text(''),
                          isImageVisibleBalloon12
                              ? Center(
                                  child: Text(
                                    '$number12',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                )
                              : icon12
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
