// 1. Buatlah sebuah kelas Book
class Book {
  // Atribut buku
  String title;
  String author;
  int year;
  bool isBorrowed;

  // Constructor (Menggunakan Tipe 2 / Kilat untuk efisiensi)
  Book(this.title, this.author, this.year, {this.isBorrowed = false});

  // 3. Fungsi di dalam kelas Book
  void borrowBook() {
    if (isBorrowed) {
      print('Pesan: Maaf, buku "$title" sudah dipinjam.');
    } else {
      isBorrowed = true;
      print('Pesan: Berhasil meminjam buku "$title".');
    }
  }
}

// 2. Buatlah sebuah kelas Library
class Library {
  // Atribut daftar buku
  List<Book> books = [];

  // 4. Fungsi di dalam kelas Library
  void addBook(Book book) {
    books.add(book);
    print('Buku "${book.title}" ditambahkan ke perpustakaan.');
  }

  void displayBooks() {
    print('\n=== Daftar Buku di Perpustakaan ===');
    if (books.isEmpty) {
      print('Perpustakaan masih kosong.');
      return;
    }
    for (var book in books) {
      String status = book.isBorrowed ? 'Dipinjam' : 'Tersedia';
      print('- ${book.title} (Karya: ${book.author}, Tahun: ${book.year}) | Status: $status');
    }
    print('===================================\n');
  }

  void borrowBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        book.borrowBook();
        return;
      }
    }
    print('Pesan: Buku dengan judul "$title" tidak ditemukan.');
  }
}

void main() {
  // 5. Buat objek minimal 3 buku untuk ditambah ke perpustakaan
  var book1 = Book('Laskar Pelangi', 'Andrea Hirata', 2005);
  var book2 = Book('Bumi Manusia', 'Pramoedya Ananta Toer', 1980);
  var book3 = Book('Filosofi Kopi', 'Dee Lestari', 2006);

  var myLibrary = Library();

  // Menambahkan buku ke dalam daftar buku perpustakaan
  myLibrary.addBook(book1);
  myLibrary.addBook(book2);
  myLibrary.addBook(book3);

  // Menampilkan detail buku beserta status peminjamannya
  myLibrary.displayBooks();

  // Meminjam buku berdasarkan judul
  myLibrary.borrowBook('Bumi Manusia');
  myLibrary.borrowBook('Laskar Pelangi');
  
  // Mencoba meminjam buku yang sudah dipinjam (isBorrowed = true)
  myLibrary.borrowBook('Bumi Manusia');

  // Menampilkan status pinjam terbaru setelah proses peminjaman
  myLibrary.displayBooks();
}