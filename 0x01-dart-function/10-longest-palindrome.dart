// Helper function to check if a string is a palindrome
bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) return "none";

  String longest = "";

  // Check every possible substring
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String sub = s.substring(i, j);

      if (isPalindrome(sub)) {
        // If we find a longer one, update our variable
        if (sub.length > longest.length) {
          longest = sub;
        }
      }
    }
  }

  // If we never found a palindrome of length >= 3, return "none"
  return longest.isEmpty ? "none" : longest;
}
