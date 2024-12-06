// @Skip("The code still broken") 
// -> kalo mau skip keseluruhan file, bisa pake anotasi
// -> kalo mau spesifik di salah satu group atau test, bisa ditambahkan ke parameter

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Testing", (){
    test("sum() test 1", (){
      expect(sum(6,9), 15);
    });
    test("sum() test 2", (){
      expect(sum(6,-9), -1);
    }, skip: "the code still broken");
    test("sum() test 3", (){
      expect(sum(-6,-9), -15);
    });
  });

  group("Test skip", (){
    test("sum() test 4", (){
      expect(sum(-6, 9), 69);
    }); 
  }, skip: "the code still broken");
}