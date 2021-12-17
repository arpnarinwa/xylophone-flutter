import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildkey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
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
          children: [
            buildkey(soundNumber: 1, color: Colors.purple),
            buildkey(soundNumber: 2, color: Colors.indigo),
            buildkey(soundNumber: 3, color: Colors.blue),
            buildkey(soundNumber: 4, color: Colors.green),
            buildkey(soundNumber: 5, color: Colors.yellow),
            buildkey(soundNumber: 6, color: Colors.orange),
            buildkey(soundNumber: 7, color: Colors.red),
          ],
        )),
      ),
    );
  }
}
//  child:TextButton(onPressed: (){
//               final player = AudioCache();
//               player.play('note1.wav');
//             },
//             child: Text('Play audio'),
//             )
