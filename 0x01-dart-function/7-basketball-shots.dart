int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Helper function to calculate total points for a team
  int calculateTotal(Map<String, int> stats) {
    int freeThrows = (stats['Free throws'] ?? 0) * 1;
    int twoPointers = (stats['2 pointers'] ?? 0) * 2;
    int threePointers = (stats['3 pointers'] ?? 0) * 3;

    return freeThrows + twoPointers + threePointers;
  }

  int pointsA = calculateTotal(teamA);
  int pointsB = calculateTotal(teamB);

  // Determine the winner based on the rules
  if (pointsA > pointsB) {
    return 1;
  } else if (pointsA < pointsB) {
    return 2;
  } else {
    return 0;
  }
}
