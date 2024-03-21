import 'dart:math' as Math;

class MaxConsicutiveLengthClass {
  int maxSequence(List<int> nums) {
    if (nums.isEmpty) return 0;

    Set<int> numsSet = nums.toSet();
    int longSequence = 0;

    for (int num in numsSet) {
      if (!numsSet.contains(num - 1)) {
        int currentNum = num;
        int longestSequenceConsicotive = 1;

        while (numsSet.contains(currentNum + 1)) {
          currentNum++;
          longestSequenceConsicotive++;
        }

        longSequence = Math.max(longSequence, longestSequenceConsicotive);
      }
    } 

    return longSequence;
  }

  
}
