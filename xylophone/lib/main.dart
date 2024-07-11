// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// import 'package:audioplayers/src/audio_cache.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int soundnumber){
    AssetsAudioPlayer.newPlayer().open(
        Audio("assets/note$soundnumber.wav"),
        autoStart: true,
        showNotification: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        playSound(1);
                      },
                      child: const Text(""))),
              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                      ),
                      onPressed: () {
                        playSound(2);
                      },
                      child: const Text(""))),
              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                      ),
                      onPressed: () {
                        playSound(3);
                      },
                      child: const Text(""))),
              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green),
                      ),
                      onPressed: () {
                        playSound(4);
                      },
                      child: const Text(""))),
              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.teal),
                      ),
                      onPressed: () {
                        playSound(5);
                      },
                      child: const Text(""))),

              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        playSound(6);
                      },
                      child: const Text(""))),


              Expanded(
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.purple),
                      ),
                      onPressed: () {
                        playSound(7);
                      },
                      child: const Text(""))),

            ],
          ),
        ),
      ),
    );
  }
}
