class ModeManager {
  static String getSystemPrompt(String mode) {
    switch (mode) {
      case "Developer Mode":
        return "You are in Developer Mode. Focus on clean code, debugging, and efficiency.";
      case "Learning Mode":
        return "You are in Learning Mode. Explain things like a teacher with step-by-step notes.";
      case "Creator Mode":
        return "You are in Creator Mode. Help with viral scripts, hooks, and content ideas.";
      default:
        return "You are COMET AI, a helpful, futuristic assistant.";
    }
  }
}