import 'package:google_generative_ai/google_generative_ai.dart';
import '../logic/mode_manager.dart';

class APIService {
  // ⚠️ Apni API Key yahan dalein
  final String _apiKey = "YOUR_GEMINI_API_KEY_HERE";
  
  Future<String> fetchAIResponse(String userInput, String currentMode) async {
    try {
      final model = GenerativeModel(model: 'gemini-pro', apiKey: _apiKey);
      
      // Mode-specific instructions (System Prompt)
      final systemPrompt = ModeManager.getSystemPrompt(currentMode);
      
      final content = [Content.text("$systemPrompt \nUser: $userInput")];
      final response = await model.generateContent(content);
      
      return response.text ?? "I'm sorry, I couldn't process that.";
    } catch (e) {
      return "⚠️ Connection Error: Please check your internet or API key.";
    }
  }
}