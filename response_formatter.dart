class ResponseFormatter {
  static String format(String text) {
    // Basic formatting logic: Extra spaces hatana aur 
    // bullet points ko clean karna
    return text.trim()
        .replaceAll(RegExp(r'\n{3,}'), '\n\n') // Multi-newlines ko fix karna
        .replaceAll('*', '•'); // Asterisks ko clean bullets mein badalna
  }
}