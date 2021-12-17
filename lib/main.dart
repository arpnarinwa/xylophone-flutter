import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
        child: Column(
          children: [
            TextButton(onPressed: (){
              playSound(1);
            },
            child:Expanded(
              child: Container(
                color: Colors.purple,
                height: 80.0,
              ),
            ),
            ),
            TextButton(onPressed: (){
              playSound(2);
            },
            child:Expanded(
              child: Container(
                color: Colors.indigo,
                height: 80.0,
               ),
            ),
           ),
           TextButton(onPressed: (){
              playSound(3);
            },
            child:Expanded(
              child: Container(
                color: Colors.blue,
                height: 80.0,
               ),
            ),
           ),
           TextButton(onPressed: (){
              playSound(4);
            },
            child:Expanded(
              child: Container(
                color: Colors.green,
                height: 80.0,
               ),
            ),
           ),
           TextButton(onPressed: (){
              playSound(5);
            },
            child:Expanded(
              child: Container(
                color: Colors.yellow,
                height: 80.0,
               ),
            ),
           ),
           TextButton(onPressed: (){
              playSound(6);
            },
            child:Expanded(
              child: Container(
                color: Colors.orange,
                height: 80.0,
               ),
            ),
           ),
           TextButton(onPressed: (){
              playSound(7);
            },
            child:Expanded(
              child: Container(
                color: Colors.red,
                height: 80.0,
               ),
            ),
           ),
          ],
          
        )
        ),
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
