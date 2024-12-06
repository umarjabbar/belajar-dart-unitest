import 'package:test/test.dart';


void main() {
  var name;
  setUp((){
    name = "Karjo";
  });

  tearDown((){
    print(name);
  }); // -> akan dijalankan ketika pengetesan selesai 

  group("Names Testing", (){
    test("Name 1", (){
      name = "$name Sukandar";
      expect(name, "Karjo Sukandar");
    });
    test("Name 2", (){
      name = "$name Subagio";
      expect(name, "Karjo Subagio");
    });
  });
}