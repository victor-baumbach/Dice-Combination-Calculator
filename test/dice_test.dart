import 'package:test/test.dart';
import '../src/dice.dart';

void main() {
  group("Combination Calculator. ",
    test('Correctly generate a 1d6 "array" of results.', () {
      expect( calculateDiceCombinations(1), {1: 1, 2: 1, 3: 1, 4: 1, 5: 1, 6: 1} );
    });

    test('Correctly generate a 2d6 "array" of results.', () {
      expect(
        calculateDiceCombinations(2),
        equals({2: 1, 3: 2, 4: 3, 5: 4, 6: 5, 7: 6, 8: 5, 9: 4, 10: 3, 11: 2, 12: 1} )
      );
    });

    test('Correctly generate a 3d6 "array" of results.', () {
      expect(
        calculateDiceCombinations(3),
        equals({3: 1, 4: 3, 5: 6, 6: 10, 7: 15, 8: 21, 9: 25, 10: 27, 11: 27, 12: 25, 13: 21, 14: 15, 15: 10, 16: 6, 17: 3, 18: 1})
      );
    });

    test('Correctly generate a 4d6 "array" of results.', () {
      expect(
        calculateDiceCombinations(4),
        equals({4: 1, 5: 4, 6: 10, 7: 20, 8: 35, 9: 56, 10: 80, 11: 104, 12: 125, 13: 140, 14: 146, 15: 140, 16: 125, 17: 104, 18: 80, 19: 56, 20: 35, 21: 20, 22: 10, 23: 4, 24: 1})
      );
    });

    test('Reject invalid number of dice (0 or less).', (i) {
      var tests = [0, -1, -2, -1073741824, -4611686018427388000, -9223372036854776000];
      for (test in tests) {
        expect( calculateDiceCombinations(test), throwsIOException );
      }
    });

    //TODO: create tests for non-six sided dice calculations.
  );
}