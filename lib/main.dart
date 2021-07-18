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

var balls = 1;
void updateBall() {
  balls = Random().nextInt(5) + 1;
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    updateBall();
                  });
                },
                child: Image.asset('images/ball$balls.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
