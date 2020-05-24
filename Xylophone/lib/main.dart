import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int val) {
    final player = AudioCache();
    player.play('note$val.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      playSound(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue[800],
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.purple,
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
