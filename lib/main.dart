import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("note$soundNumber.wav"));
  }


 Expanded buildKey(){
    return Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(' '),
                ),
              );
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(' '),
                ),
              ),
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(' '),
                ),
              ),
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(' '),
                ),
              ),
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(' '),
                ),
              ),
              // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink),
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(' '),
                ),
              ),
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(' '),
                ),
              ),
               // Add spacing here
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(' '),
                ),
              ),
           
           
            ],
          ),
        ),
      ),
    );
  }
}
