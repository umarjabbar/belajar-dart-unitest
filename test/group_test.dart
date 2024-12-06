import 'package:test/test.dart';


int sum(int a, int b) => a + b; 

void main() {
  group("testing sum()", (){
    test("positive", (){
      expect(sum(6,9), equals(15));
    });
    test("negative", (){
      expect(sum(6, -9), equals(-3));
    });
  });
}