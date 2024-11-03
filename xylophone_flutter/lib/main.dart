import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // Play the sound based on the button pressed
  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player
        .setSource(AssetSource('note$soundNumber.wav')); // Set the source
    await player.resume(); // Play the audio
  }

  Expanded buildKey(Color color, int number) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child:
            Text('Play Sound $number', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Stretch buttons to fill width
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.grey, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.purple, 6),
              buildKey(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
