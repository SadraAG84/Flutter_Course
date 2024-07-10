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
          child: Column(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note1.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),
              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note2.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),
              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note3.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),
              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note4.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),
              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.teal),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note5.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),

              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note6.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),


              Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.purple),
                      ),
                      onPressed: () {
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/note7.wav"),
                          autoStart: true,
                          showNotification: true,
                        );
                      },
                      child: Text(""))),

            ],
          ),
        ),
      ),
    );
  }
}
