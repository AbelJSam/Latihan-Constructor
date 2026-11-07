void main() {
  var tiket1 = Tiket(Film: 'SPiderman', Durasi: '1 jam', noKursi: 'A11', Studio: 4);

  tiket1.cetak();
}

class Tiket {
  String? Film;
  String? Durasi;
  String? noKursi;
  int? Studio;

//1. Positional indirect argumen
// Tiket(String inputFilm, String inputDurasi, String inputNoKursi, int inputStudio) {
//   this.Film = inputFilm;
//   this.Durasi = inputDurasi;
//   this.noKursi = inputNoKursi;
//   this.Studio = inputStudio;
// }

//2. Positional direct argumen
// Tiket(this.Film, this.Durasi, this.noKursi, this.Studio);

//3. inderect named argumen
// Tiket({String? inputFilm, String? inputDurasi, String? inputNoKursi, int? inputStudio}) {
//   this.Film =inputFilm;
//   this.Durasi = inputDurasi;
//   this.noKursi = inputNoKursi;
//   this.Studio =  inputStudio;
// }

//4. direct named argumen
Tiket({this.Film, this.Durasi, this.noKursi, this.Studio});

  cetak() {
    print('========== Tiket ==========');
    print('Judul Film : $Film');
    print('Durasi : $Durasi');
    print('Nomor Kursi : $noKursi');
    print('Studio : $Studio');
  }
}
