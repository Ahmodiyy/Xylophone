import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: MyXylophone(),
    ),
  ));
}

class MyXylophone extends StatefulWidget {
  const MyXylophone({Key? key}) : super(key: key);

  @override
  _MyXylophoneState createState() => _MyXylophoneState();
}

class _MyXylophoneState extends State<MyXylophone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          buildKey(color: Colors.red, number: 1),
          buildKey(color: Colors.orange, number: 2),
          buildKey(color: Colors.orangeAccent, number: 3),
          buildKey(color: Colors.yellow, number: 4),
          buildKey(color: Colors.green, number: 5),
          buildKey(color: Colors.teal, number: 6),
          buildKey(color: Colors.blue, number: 7),
        ],
      ),
    );
  }

  Expanded buildKey({Color? color, required int number}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
        ),
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  void playSound(int num) async {
    AudioCache audioCache = AudioCache(prefix: 'assets/');
    audioCache.play('assets_note$num.wav');
    // AudioPlayer audioPlayer = AudioPlayer();
    // audioPlayer.play('assets/assets_note$num.wav');
  }
}
