String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";

  int start = 0;
  int maxLength = 0;
  int bestStart = 0;

  // Maps character to its last seen index
  Map<String, int> lastSeen = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // If we've seen the character and it's within our current window
    if (lastSeen.containsKey(char) && lastSeen[char]! >= start) {
      // Slide the window start to the right of the previous occurrence
      start = lastSeen[char]! + 1;
    }

    // Update/Record the character's position
    lastSeen[char] = i;

    // Check if the current window is the longest so far
    int currentLength = i - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      bestStart = start;
    }
  }

  // Use the substring method we talked about earlier!
  return str.substring(bestStart, bestStart + maxLength);
}
