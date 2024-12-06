// @Retry(5) // > bisa gini

import 'package:test/test.dart';

void main() {
  test("Retry Test", (){
    expect(1, 2);
  }, retry: 3);
  // atau gini
}