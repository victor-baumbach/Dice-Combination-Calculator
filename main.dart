import 'src/dice.dart';
import 'dart:math';

void main() {
  int dice = 1;
  var results = calculateDiceCombinations(dice);
  print(results);

  print(dice*3);
  print(results[dice*3]/pow(6, dice));
}