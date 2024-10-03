import 'package:flutter/material.dart';
import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerHandler extends BaseAudioHandler with SeekHandler, ChangeNotifier {
  final _player = AudioPlayer();

  AudioPlayerHandler() {
    _init();
  }

  Future<void> _init() async {
    await _player.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    _player.playbackEventStream.listen((event) {
      notifyListeners();
    });
  }

  @override
  Future<void> play() async {
    await _player.play();
    notifyListeners();
  }

  @override
  Future<void> pause() async {
    await _player.pause();
    notifyListeners();
  }

  @override
  Future<void> stop() async {
    await _player.stop();
    notifyListeners();
  }

  @override
  Future<void> seek(Duration position) async {
    await _player.seek(position);
    notifyListeners();
  }

  bool get playing => _player.playing;

  Duration get position => _player.position;
}
