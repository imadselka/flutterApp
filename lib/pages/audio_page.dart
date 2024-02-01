import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPage extends StatelessWidget {
  AudioPage({super.key});

  final player = AudioPlayer();
  AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Audio content'),
          const SizedBox(height: 20),
          Image.asset('images/pic.jpg',
              width: 300, height: 300, fit: BoxFit.cover),
          ElevatedButton(
            onPressed: () {
              playAudioFromUrl(
                  'https://filesamples.com/samples/audio/mp3/Symphony%20No.6%20(1st%20movement).mp3');
            },
            child: const Text('Play Audio'),
          ),
          ElevatedButton(
              onPressed: () {
                player.stop();
              },
              child: const Text('Stop Audio')),
        ],
      ),
    );
  }
}
