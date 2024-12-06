@Tags(['um', 'ar'])
// -> kalo mau ngasih tag pada pengetesan bisa tambahkan anotasi @Tags atau tags pada parameter
import 'package:test/test.dart';

void main() {
  group("Testing Group", (){
    test("Test 1", (){
      print("ini Test pertama");
    }, tags: ['first']);

    test("Test 2", (){
      print("ini test kedua");
    }, tags: ['secound']);

    test("Test 3", (){
      print("ini test ketiga");
    }, tags: ['thrid']);
  });  
}