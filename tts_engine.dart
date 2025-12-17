import 'package:flutter_tts/flutter_tts.dart';

class TTSEngine {
  final FlutterTts _tts = FlutterTts();

  Future<void> initVoice() async {
    await _tts.setLanguage("en-US");
    
    // Voice Settings for "Cute, Friendly, Calm" effect
    await _tts.setPitch(1.2);       // Thodi high pitch for female voice
    await _tts.setSpeechRate(0.45);  // Natural speed
    await _tts.setVolume(1.0);
    
    // iOS/Android specific voice selection (optional)
    // await _tts.setVoice({"name": "en-us-x-sfg#female_1-local", "locale": "en-US"});
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await _tts.speak(text);
    }
  }

  Future<void> stop() async {
    await _tts.stop();
  }
}