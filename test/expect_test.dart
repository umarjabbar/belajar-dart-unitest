import 'dart:math';

import 'package:test/test.dart';


String sayHello(String name){
  return 'Helloo $name';
}

void main() {
  test("Test sayHello Function", (){
    var response = sayHello("dart");
    expect(response, "Helloo dart");
  });
}