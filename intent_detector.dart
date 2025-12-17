class IntentDetector {
  static String detectMode(String input) {
    input = input.toLowerCase();
    if (input.contains("code") || input.contains("python")) return "Developer Mode";
    if (input.contains("study") || input.contains("explain")) return "Learning Mode";
    if (input.contains("game") || input.contains("minecraft")) return "Gaming Mode";
    return "General Mode";
  }
}