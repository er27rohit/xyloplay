import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloplayApp());

class XyloplayApp extends StatelessWidget {
  Widget endDots() {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.grey),
    );
  }

  Widget buildPallete(Color colorName, int toneIndex) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: FlatButton(
          color: colorName,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[endDots(), endDots()],
          ),
          onPressed: () {
            final player = AudioCache();
            player.play('note$toneIndex.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildPallete(Colors.red, 1),
                buildPallete(Colors.orange, 2),
                buildPallete(Colors.yellow, 3),
                buildPallete(Colors.green, 4),
                buildPallete(Colors.teal, 5),
                buildPallete(Colors.blue, 6),
                buildPallete(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
