// ignore_for_file: unused_import

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatelessWidget {

    Future<void> playsound(int soundnumber) async {
         final player = AudioPlayer();
         await player.play(AssetSource('note$soundnumber.wav'));
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(1);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(2);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.yellow,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(3);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.green,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(4);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.green.shade800,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(5);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.blue,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(6);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    width: double.maxFinite,
                    child: TextButton(
                      child:const Text(''),
                      onPressed: () async {
                        playsound(7);
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
