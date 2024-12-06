import 'package:belajar_dart_unitest/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main(){
  group("Book Service", (){

    var bookRepository = MockBookRepository();
    // var bookRepository = BookRepository();
    var bookService = BookService(bookRepository);

    test("Seve new book must success", (){
      bookService.save("1", "Tutorial colay", 50000);
      verify(bookRepository.save(Book("1", "Tutorial colay", 50000))).called(1);
      // -> untuk memverifikasi pemanggilan object
    });

    test("Find book by id not found", (){
      expect((){
        bookService.find("1");
      }, throwsException);
    });

    test("find by id must success", (){
      when(bookRepository.findById("1"))
        .thenReturn(Book("1","Tutorial colay", 50000));
      
      var book = bookService.find("1");
      expect(book, equals(Book("1", "Tutorial colay", 50000)));

      verify(bookRepository.findById("1")).called(1);
    });

    test("Find by id karjo", (){
      // pake matcher
      when(bookRepository.findById(argThat(startsWith("karjo"))))
        .thenReturn(Book("karjo69", "Tutorial bercocok tanam", 75000));

      var book = bookService.find("karjo69");
      expect(book, equals(Book("karjo69", "Tutorial bercocok tanam", 75000)));

      verify(bookRepository.findById(any)).called(1);
    });
  });
}


