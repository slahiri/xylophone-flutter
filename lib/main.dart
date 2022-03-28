import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black45,
          appBar: AppBar(
            backgroundColor: Colors.black45,
            foregroundColor: Colors.black45,
            centerTitle: false,
            title: Text('Music Player'),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: XylophonePlayer(),
        )));


void playSound(int tone) {
  final audioFile = AudioCache();
  audioFile.play('note$tone.wav');
}

Widget buildKey(int key, MaterialColor color) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(key);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
    ),
  );
}

class XylophonePlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.purple),
          buildKey(2, Colors.indigo),
          buildKey(3, Colors.blue),
          buildKey(4, Colors.green),
          buildKey(5, Colors.yellow),
          buildKey(6, Colors.orange),
          buildKey(7, Colors.red),
        ],
      ),
    );
  }
}
