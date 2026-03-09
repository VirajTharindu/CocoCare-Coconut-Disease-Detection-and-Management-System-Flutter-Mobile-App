import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic Math & String Tests', () {
    test('String capitalization correctly capitalized the first letter', () {
      final input = "coconut";
      final output = "${input[0].toUpperCase()}${input.substring(1)}";
      expect(output, "Coconut");
    });
    
    test('Basic addition', () {
      expect(2 + 2, 4);
    });
  });
}
