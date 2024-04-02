// ignore_for_file: unused_import, unnecessary_import

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav')); // Assuming your audio files are in the assets folder
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () async {
            await playSound(soundNumber);
          },
          child: const Text(''), // You might want to put some text or icon here
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.blueGrey.shade300, soundNumber: 1),
              buildKey(color: Colors.blueGrey.shade400, soundNumber: 2),
              buildKey(color: Colors.blueGrey.shade500, soundNumber: 3),
              buildKey(color: Colors.blueGrey.shade600, soundNumber: 4),
              buildKey(color: Colors.blueGrey.shade700, soundNumber: 5),
              buildKey(color: Colors.blueGrey.shade800, soundNumber: 6),
              buildKey(color: Colors.blueGrey.shade900, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
//flutter build apk --split-per-abi   