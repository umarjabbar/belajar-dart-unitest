import 'package:belajar_dart_unitest/src/book.dart';

class BookRepository {

  void save(Book book){
    print("Save $book");
    throw UnsupportedError("save not supported");
  }

  void update(Book book){
    print("update $book");
    throw UnsupportedError("update not supported");
  }

  void delete(Book book){
    print("delete $book");
    throw UnsupportedError("delete not supported");
  }

  Book? findById (String id){
    print("Find book with id: $id");
    throw UnsupportedError("find book not supported");
  }
}