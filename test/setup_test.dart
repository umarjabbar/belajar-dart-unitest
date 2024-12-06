import 'package:test/test.dart';


void main() {

  var name;
  // -> akan dieksekusi sebelun testing
  setUp((){
    name = "Karjo";
  });

  group("Testing Group", (){
    test("Test 1", (){
      name = '$name Sukandar';
      expect(name, "Karjo Sukandar");
    });

  });

}