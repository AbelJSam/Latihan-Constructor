void main() {
  var book1 = Book();
  book1.author = 'Moonton';
  book1.title = 'Monile Legend';
  book1.year = 2016;

  var book2 = Book();
  book2.author = 'Garena';
  book2.title = 'Fre Fire';
  book2.year = 2016;
  book2.borrowedBook();

  var book3 = Book();
  book3.author = 'Tencent';
  book3.title = 'PUBG';
  book3.year = 2016;

  var perpusWd = Library();
  perpusWd.addBook(book1);
  perpusWd.addBook(book2);
  perpusWd.addBook(book3);

  perpusWd.displayBooks();
}

class Book {
  String? title;
  String? author;
  int? year;
  bool isBorrowed = false;

  // Book(this.title, this.author, this.year, {this.isBorrowed = false});

  borrowedBook() {
    if (isBorrowed == true) {
      print('Pesan: Maaf, buku "$title" sudah dipinjam.');
    } else {
      isBorrowed = true;
      print('Pesan: Berhasil meminjam buku "$title".');
    }
  }
}

class Library {
  List<Book> books = [];

  addBook(Book inputBook) {
    books.add(inputBook);

    // print('\n ===== Daftar Buku di Perpustakaan =====');
    // if (books.isEmpty) {
    //   print('Belum ada Buku');
    //   return;
    // }

    // for (var inputBook in books) {

    // }
  }

      displayBooks() {
      for (var element in books) {
        print(
            '${element.title} | ${element.author} | ${element.year} | ${element.isBorrowed == true ? 'Buku Dipinjam' : 'Tersedia'}');
      }
    }

  borrowBook(String title) {
    for (var element in books) {
      if (element.title == title) {
        element.borrowedBook();
      }
    }
  }
}
