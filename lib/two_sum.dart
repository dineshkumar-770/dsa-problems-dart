class TwoSum {
  List findTwoSum({required List<int> numbers, required int targetSum}) {
    numbers.sort(
      (a, b) => a.compareTo(b),
    );
    print(numbers);
    List finalNumber = [];
    Map<int, int> numberMap = {};

    for (int i = 0; i < numbers.length; i++) {
      numberMap.addAll(<int, int>{i: numbers[i]});
    }
    for (var i = 0; i < numberMap.values.length; i++) {
      int firstNumber = numbers[i];
      int secondNumber = targetSum - firstNumber;

      if (numberMap.containsValue(secondNumber)) {
        int indexOfSecondNumberInnumberMap = numberMap[i]!;
        if (indexOfSecondNumberInnumberMap == i) {
          continue;
        }
        print("$firstNumber and $secondNumber");
        finalNumber.addAll([
          [firstNumber, secondNumber]
        ]);
      }
    }
    print(finalNumber);

    return finalNumber;
  }
}

/* 
Algorithm:- 
1. first convert the given List<int> into it's HashMap as key value pairs.
2. take another for loop and initialize the two number called first and second number.
3. Now assign the first number's value as the itration value of the for loop variable i.e firstNumber  = i,
4. And for second number use the formula:- 

    x + y = targetValue,
    y = targetValue - y,
    that means:-
    firstNumber + secondNumber = targetValue;
    firstNumber = itration value of the for loop i.e i,
    now,
    secondNumber = targetValue - firstNumber,

5. Use the check if that secondNumber is contained by HashMap with it's in value's value(not in key's value).
6. If yes then return the both values as in the list [firstNumber, secondNumber]

*/
