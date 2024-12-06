@OnPlatform({
  "windows" : Skip("kode ini tidak bisa dijalankan di windows")
})

// bisa juga di parameternya


import 'package:test/test.dart';

void main() {
  test("Testing", () => print("Ini akan diskip kalo di jalankan di windows"));
}