 class Duplication {
  bool findDuplicateS(List<int> numbers) {
    
    Set<int> numberSet = {};

    for (int i in numbers) {
      if (numberSet.contains(i)) {
        return true;
      }
      numberSet.add(i);
    }
    print(numberSet);
    return false;
  }
}
