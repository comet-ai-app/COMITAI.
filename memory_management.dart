class MemoryManager {
  static const int maxHistory = 50;

  static List<Map<String, String>> trimHistory(List<Map<String, String>> history) {
    if (history.length > maxHistory) {
      return history.sublist(history.length - maxHistory);
    }
    return history;
  }
}