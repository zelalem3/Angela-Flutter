import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),

            backgroundColor: const Color.fromARGB(255, 25, 127, 211),
            // Add a title to the AppBar
          ),
          body: widget(),
        ),
      ),
    );

class widget extends StatelessWidget {
  const widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int random = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            random = Random().nextInt(5) + 1;
          });

          print(random);
        },
        child: Image.asset("images/ball$random.png"),
      ),
    );
  }
}
