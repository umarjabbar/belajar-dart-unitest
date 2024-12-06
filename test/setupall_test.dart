import 'package:test/test.dart';


void main() {
  var name;
  setUp((){
    name = "Herlambang";
  });

  tearDown((){
    print(name);
  });

  setUpAll((){
    print("Memulai Pengetesan");
  });

  tearDownAll((){
    print("Pengetesan Selesai");
  });



  group("Testing Name", (){
    test("1st Name", (){
      name = "Bagus $name";
      expect(name, "Bagus Herlambang");
    });

    test("2nd Name", (){
      name = "Fery $name";
      expect(name, "Fery Herlambang");
    });
  });
}