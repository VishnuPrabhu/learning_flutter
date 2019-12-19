import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SoundButton(
                fileName: 'note1.wav',
                color: Colors.red,
              ),
              SoundButton(
                fileName: 'note2.wav',
                color: Colors.orange,
              ),
              SoundButton(
                fileName: 'note3.wav',
                color: Colors.yellow,
              ),
              SoundButton(
                fileName: 'note4.wav',
                color: Colors.green.shade100,
              ),
              SoundButton(
                fileName: 'note5.wav',
                color: Colors.green.shade900,
              ),
              SoundButton(
                fileName: 'note6.wav',
                color: Colors.blue,
              ),
              SoundButton(
                fileName: 'note7.wav',
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SoundButton extends StatelessWidget {
  final String fileName;
  final Color color;

  SoundButton({@required this.fileName, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play(fileName);
        },
        color: color,
      ),
    );
  }
}
