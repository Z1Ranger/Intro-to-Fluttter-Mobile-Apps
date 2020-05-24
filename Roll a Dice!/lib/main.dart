import 'package:flutter/material.dart';
import 'dart:math';

List colors = [Colors.red, Colors.blue, Colors.teal];
int color = 0;

void main() {
  return runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DicePage());
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDice = 1;
  int rDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[color][300],
      appBar: AppBar(
        title: Text('Roll a Dice!'),
        centerTitle: true,
        backgroundColor: colors[color][900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      randomGenerator();
                    },
                    child: Image.asset('images/dice$lDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      randomGenerator();
                    },
                    child: Image.asset('images/dice$rDice.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              child: Text('Switch Color'),
              onPressed: () {
                setState(
                  () {
                    color += 1;
                    color %= 3;
                    print(color);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void randomGenerator() {
    setState(
      () {
        lDice = Random().nextInt(6) + 1;
        rDice = Random().nextInt(6) + 1;
      },
    );
  }
}
