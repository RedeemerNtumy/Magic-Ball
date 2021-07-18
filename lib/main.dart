import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade700,
            title: Center(
              child: Text("Magic Ball"),
            ),
          ),
          body: Ball()),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  var Ball = 1;
  void updateBall() {
    Ball = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  updateBall();
                },
                child: Image.asset('images/ball$Ball.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
