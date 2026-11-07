void mian() {
  // var baju1 = Pakaian(inputjenis: 'Baju', inputwarna = '');
  var baju1 =Pakaian(warna: 'Biru', jenis: 'Celana');
  baju1.cetak();
}

class Pakaian{
  String? jenis;
  String? warna;

//1. Positional indirect argumen
  // Pakaian(String inputJenis, String inputWarna) {
  //   this.jenis = inputJenis;
  //   this.warna = inputWarna;

  // }

//2. Positional direct argumen
// Pakaian(this.jenis, this.warna);

//3. inderect named argumen
// Pakian({String? inputjenis, String? inputwarna}) {
//   this.jenis = inputjenis;
//   this.warna = inputwarna;
// }

//4. direct named argumen
Pakaian({this.jenis, this.warna});

  cetak() {
    print('Pakaian ini adalah $jenis');
    print('$jenis ini berwarma $warna');
  }
}