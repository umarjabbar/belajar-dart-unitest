// @TestOn("windows || mac-os || linux") // -> ini akan dieksekusi global
// kalo mau spesifik salah satu test, bisa ditambahkan di parameter test() / group()

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main(){
  group("Testing", (){
    test("sum() test 1", (){
      expect(sum(1,2), 3);
    }, testOn: "mac-os");

    test("sum() test 2", (){
      expect(sum(3,4), 7);
    });
  }, testOn: "windows");   
}