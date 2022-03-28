import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.pinkAccent,
    appBar: AppBar(
      backgroundColor: Colors.redAccent,
      centerTitle: false,
      title: Text('Music Player'),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    body: XylophonePlayer(),
  )));
}

void playSound(int tone) {
  final audioFile = AudioCache();
  audioFile.play('note$tone.wav');
}

class XylophonePlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.red,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.orange,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.yellow,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.green,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.teal,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.blue,
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    color: Colors.purple,
                  ))),
        ],
      ),
    );
  }
}
