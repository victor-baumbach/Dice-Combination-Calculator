Map calculateDiceCombinations(int dice, {int sides = 6}) {
  List<int> buffer = new List<int>();
  while (buffer.length < sides - 1) {
    buffer.add(0);
  }
  List<int> diff = buffer;
  List<int> pattern = new List();
  Map result = new Map();

  while (pattern.length <= dice*5) {
    pattern = [];
    int number = 1;
    pattern.add(number);
    for (int i in diff) {
      number += i;
      pattern.add(number);
    }

    List<int> aSet = pattern.sublist(1) + buffer;
    List<int> bSet = List.from(aSet.reversed);
    diff = [];

    for (int i = 0; i < aSet.length; i++) {
      diff.add(aSet[i] - bSet[i]);
    }
  }

  for (int i = 0; i < pattern.length; i++) {
    result[i+dice] = pattern[i];
  }

  return result;
}