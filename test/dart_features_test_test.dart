import 'package:dart_features_test/dart_features_test.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('getType', () {
    var two = 2;
    print(getType(two));
    expect(getType(3), 'int');
  });

  test('printRune', () {
    var str = '\u{1f5fa}';
    Runes charCodes =  Runes(str);
    print(String.fromCharCodes(charCodes));
    var someInt = 300;
    print(' Hex of $someInt is: ${someInt.toRadixString(16)}');

    var vv = '\u{1F601}';

    print('abc${vv}defg');
  });
}
