import 'dart:io';

// luas persegi panjang --definition start
class PersegiPanjang {
  double panjang;
  double lebar;
  PersegiPanjang(double p, double l) {
    panjang = p;
    lebar = l;
  }

  double luas() {
    return panjang * lebar;
  }
}
// luas persegi panjang --definition end

void main(List<String> arguments) {
  // luas persegi panjang --implementation start
  print("----------------");
  print("luas bagun persegi panjang");
  print("panjang: ");
  double panjang = double.parse(stdin.readLineSync());
  print("lebar: ");
  double lebar = double.parse(stdin.readLineSync());
  PersegiPanjang persegiPanjang = PersegiPanjang(panjang, lebar);
  double luas = persegiPanjang.luas();
  print("luas: $luas");
  // luas persegi panjang --implementation end

  // klasifikasi umur --start
  print("----------------");
  String resKlasifikasi = "masih seorang Anak-anak";
  print("Umur Anda: ");
  int umur = int.tryParse(stdin.readLineSync());
  if (umur >= 18) {
    resKlasifikasi = "adalah seorang Dewasa";
  }
  print("Anda $resKlasifikasi");
  // klasifikasi umur --end

  // klasifikasi angka --start
  print("----------------");
  String klasAngka = "nol";
  print("Masukkan angka: ");
  int angka = int.tryParse(stdin.readLineSync());
  if (angka > 0) {
    klasAngka = "positif";
  } else if (angka < 0) {
    klasAngka = "negatif";
  }
  print("Angka tersebut $klasAngka");
  // klasifikasi angka --end

  // loop angka genap --start
  print("----------------");
  print("print angka genap dari 1..10");
  //print("Angka maksimum: ");
  //int maxAngka = int.tryParse(stdin.readLineSync());
  int maxAngka = 10;
  double modGenap;
  for (int i=1; i <= maxAngka; ++i) {
    modGenap = (i % 2).toDouble();
    if (modGenap == 0) {
      print(i);
    }
  }
  // loop angka ganjil --end

  print("----------------");
  print("masukkan 5 angka:");
  var collectAngka = [];
  for (int i=0; i<5; i++) {
    collectAngka.add(int.tryParse(stdin.readLineSync()));
  }

  //double modGanjil;  
  String deretGanjil = "";
  int sumDeretGanjil = 0;
  for (var i in collectAngka) {
    //print(i.toString());
    modGenap = (i%2).toDouble();
    if (modGenap != 0) {
      if (deretGanjil == "") {
        deretGanjil = deretGanjil + i.toString();
      } else {
        deretGanjil = '$deretGanjil + ${i.toString()}';
      }    
      sumDeretGanjil+=i;   
    }
  }
  print("$deretGanjil = $sumDeretGanjil");

  print("----------------");
  print("masukkan kata untuk diubah ke kapital:");
  String kata = stdin.readLineSync();
  String hasil = castToCapital(kata);
  print("Hasil: $hasil");
}

String castToCapital(String wCaps) {
  String hasil = wCaps.toUpperCase();
  return hasil;
}
