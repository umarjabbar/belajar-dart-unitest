import 'dart:async';
import 'dart:math';

import 'package:test/test.dart';

String sayHello(name) => 'Hello $name';

int sum(int a, int b) => a + b;

void main() {
  test("Testing sayHello() with Matcher", (){
    expect(sayHello("Karjo"), endsWith("Karjo"));
    expect(sayHello("Karjo"), startsWith("Hello"));
    expect(sayHello("Karjo"), equalsIgnoringCase("hello karjo"));
    expect(sayHello("Karjo"), isA<String>());
  });

  test("Testing sum() with Matcher", (){
    expect(sum(1,2), equals(3));
    expect(sum(1,2), greaterThan(2));
    expect(sum(1,2), isA<int>());
    
  });

}