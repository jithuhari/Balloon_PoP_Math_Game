import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  AssetsAudioPlayer player1 =AssetsAudioPlayer();
  AssetsAudioPlayer player2 =AssetsAudioPlayer();

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

  final number1 = nextNumber(min: 2, max: 30);
  final number2 = nextNumber(min: 2, max: 30);
  final number3 = nextNumber(min: 2, max: 30);
  final number4 = nextNumber(min: 2, max: 30);
  final number5 = nextNumber(min: 2, max: 30);
  final number6 = nextNumber(min: 2, max: 30);
  final number7 = nextNumber(min: 2, max: 30);
  final number8 = nextNumber(min: 2, max: 30);
  final number9 = nextNumber(min: 2, max: 30);
  final number10 = nextNumber(min: 2, max: 30);
  final number11 = nextNumber(min: 2, max: 30);
  final number12 = nextNumber(min: 2, max: 30);
  final numberDiv = nextNumber(min: 2, max: 6);

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

  int score = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;

  Image balloonImage = Image(
      fit: BoxFit.contain, image: AssetImage('assets/images/balloonGreen.png'));

  @override
  void initState() {
    
    super.initState();

     player1.open(
      Audio('assets/audio/Win.mp3'),
      autoStart: false , showNotification: true
      );

     player2.open(
      Audio('assets/audio/Lose.wav'),
      autoStart: false , showNotification: true
      );

  }

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
                          player1.play();
                          isImageVisibleBalloon1 = false;
                          icon1 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon1 = false;
                          icon1 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon2 = false;
                          icon2 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon2 = false;
                          icon2 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon3 = false;
                          icon3 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon3 = false;
                          icon3 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
                          
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
                          player1.play();
                          isImageVisibleBalloon4 = false;
                          icon4 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon4 = false;
                          icon4 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon5 = false;
                          icon5 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon5 = false;
                          icon5 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon6 = false;
                          icon6 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon6 = false;
                          icon6 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon7 = false;
                          icon7 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon7 = false;
                          icon7 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon8 = false;
                          icon8 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon8 = false;
                          icon8 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon9 = false;
                          icon9 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon9 = false;
                          icon9 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon10 = false;
                          icon10 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon10 = false;
                          icon10 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon11 = false;
                          icon11 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon11 = false;
                          icon11 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
                          player1.play();
                          isImageVisibleBalloon12 = false;
                          icon12 = Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          );
                          score++;
                          correctAnswers++;
                        } else {
                          player2.play();
                          isImageVisibleBalloon12 = false;
                          icon12 = Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                            size: 50,
                          );
                          score--;
                          wrongAnswers++;
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
              SizedBox(height: 15,),

              Text('Total Correct Answers $correctAnswers ',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.green
              ),
              ),
              SizedBox(height: 15,),
              
              Text('Total Wrong Answers $wrongAnswers ',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.red
              ),
              ),
              Spacer(),

              Text('Your Final Score is $score',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
              
              ),

              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

// create a method to show randow numbers between 2 numbers
int nextNumber({required int min, required int max}) =>

    //max 50 , min 5
    //1.50-5 = 45
    //2.Random.nextInt(45+1)=>0...45
    //3.5 + 0 ... 45 => 5...50

    min + Random().nextInt(max - min + 1);
