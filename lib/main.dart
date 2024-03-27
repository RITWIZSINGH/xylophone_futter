// ignore_for_file: unused_import

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: const Text('Click me'),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('note1.wav'));
                    },
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
