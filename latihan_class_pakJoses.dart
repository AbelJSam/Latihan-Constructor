void main() {
  var buku1 = Book();
  buku1.author = 'Deni';
  buku1.title = 'Menyala abangku';
  buku1.year = 2022;

  var buku2 = Book();
  buku2.author = 'Martin';
  buku2.title = 'Hidup tidak seindah mimpi';
  buku2.year = 2020;
  buku2.borrowBook();

  var buku3 = Book();
  buku3.author = 'Yola';
  buku3.title = 'Bunga Kembang';
  buku3.year = 2019;

  var perpuswd = Library();
  perpuswd.addBook(buku1);
  perpuswd.addBook(buku2);
  perpuswd.addBook(buku3);

  perpuswd.displayBook();
  perpuswd.borrowBook('Bunga Kembang');
  perpuswd.displayBook();
}

class Book {
  String? title;
  String? author;
  int? year;
  bool isBorrowed = false;

  borrowBook() {
    if (isBorrowed == true) {
      print('Buku sudah dipinjam');
    } else {
      isBorrowed = true;
      print('Buku dipinjam');
    }
  }
}

class Library {
  List<Book> books = [];

  addBook(Book inputbook) {
    books.add(inputbook);
  }

  displayBook() {
    for (var element in books) {
      print(
        '${element.title} | ${element.author} | ${element.year} | ${element.isBorrowed == true ? 'Buku dipinjam' : 'Tersedia'}',
      );
    }
  }

  borrowBook(String title) {
    for (var element in books) {
      if (element.title == title) {
        element.borrowBook();
      }
    }
  }
}
