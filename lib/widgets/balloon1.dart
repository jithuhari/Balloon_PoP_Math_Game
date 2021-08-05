import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class BalloonOne extends StatefulWidget {
  const BalloonOne({ Key? key }) : super(key: key);

  @override
  _BalloonOneState createState() => _BalloonOneState();
}

class _BalloonOneState extends State<BalloonOne> {

  AssetsAudioPlayer player1 =AssetsAudioPlayer();
  AssetsAudioPlayer player2 =AssetsAudioPlayer();

  bool isImageVisibleBalloon1 = true;

  final number1 = nextNumber(min: 2, max: 30);
  final numberDiv = nextNumber(min: 2, max: 6);

  Icon icon1 = Icon(Icons.check);

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
    return GestureDetector(
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