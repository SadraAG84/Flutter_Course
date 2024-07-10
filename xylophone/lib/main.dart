// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/src/audio_cache.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(Xylophone());
class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: TextButton(onPressed: () {

                AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/note1.wav"),
                  // autoStart: true,
                  showNotification: true,

                );


              }, child: Text(
                "Click to play sound."
              ),),
            )
        ),
      ),
    );
  }
}


