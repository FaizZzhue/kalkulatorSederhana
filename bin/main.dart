import 'dart:io';
import 'kalkulator.dart';

double masukkanAngka(String pesan) {
  while (true) {
    stdout.write(pesan);
    final angka = stdin.readLineSync();
    if (angka == null || angka.trim().isEmpty) {
      print('Input tidak boleh kosong, Masukkan Ulang!');
      continue;
    }
    try {
      return double.parse(angka);
    } catch (_) {
      print('Input tidak valid, Masukkan Ulang!');
    }
  }
}

String pilihOperasi() {
  while (true) {
    print("\nPilih operasi :");
    print("[1] Tambah");
    print("[2] Kurang");
    print("[3] Kali");
    print("[4] Bagi");
    stdout.write("Pilihan (1-4) : ");
    final pilihan = stdin.readLineSync();

    if (pilihan == null || pilihan.trim().isEmpty) {
      print("Pilihan tidak boleh kosong, Masukkan Ulang!");
      continue;
    }

    if (["1", "2", "3", "4"].contains(pilihan)) {
      return pilihan;
    } else {
      print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}

bool perulanganProgram() {
  while (true) {
    stdout.write('\nApakah ingin menghitung lagi? (Y/T) : ');
    final jawab = stdin.readLineSync();
    if (jawab == null || jawab.trim().isEmpty) {
      print('Masukan tidak boleh kosong.');
      continue;
    }
    final lanjut = jawab.trim().toUpperCase();
    if (lanjut == 'Y') return true;
    if (lanjut == 'T') return false;
    print('Masukkan Y untuk Ya atau T untuk Tidak.');
  }
}

void main() {
  
  do {
    print('=== Aplikasi Kalkulator Sederhana ===');
    var angka1 = masukkanAngka('Masukkan bilangan pertama  : ');
    var angka2 = masukkanAngka('Masukkan bilangan kedua : ');

    final kalkulator = Kalkulator(angka1, angka2);

    String pilihan = pilihOperasi();
    try {
      switch (pilihan) {
        case '1':
          print('Hasil: ${kalkulator.tambah()}');
          break;
        case '2':
          print('Hasil: ${kalkulator.kurang()}');
          break;
        case '3':
          print('Hasil: ${kalkulator.kali()}');
          break;
        case '4':
          print('Hasil: ${kalkulator.bagi()}');
          break;
      }
    } catch (e) {
      print(e);
    }
  } while (perulanganProgram());

  print('Program selesai.');
}

