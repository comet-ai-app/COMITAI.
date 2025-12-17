class AIService {
  // Yahan Gemini ya OpenAI API integrate hogi
  Future<String> getResponse(String prompt, String mode) async {
    try {
      // Logic: API Call based on 'mode' (Developer, Learning, etc.)
      return "I am COMET AI in $mode Mode. How can I assist you?";
    } catch (e) {
      return "Connection Error. Please try again.";
    }
  }
}