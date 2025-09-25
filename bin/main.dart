import 'dart:io';
import 'kalkulator.dart';

double masukkanAngka(String pesan) {
  while (true) {
    stdout.write(pesan);
    final input = stdin.readLineSync();
    if (input == null || input.trim().isEmpty) {
      print('Input tidak boleh kosong, Masukkan Ulang!');
      continue;
    }
    try {
      return double.parse(input);
    } catch (_) {
      print('Input tidak valid, Masukkan Ulang!');
    }
  }
}

String pilihOperasi() {
  while (true) {
    print("\nPilih operasi:");
    print("[1] Tambah");
    print("[2] Kurang");
    print("[3] Kali");
    print("[4] Bagi");
    stdout.write("Pilihan (1-4): ");
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

void main() {
  final kalkulator = Kalkulator();
  bool lanjut = true;

  while (lanjut) {
    print('=== Aplikasi Kalkulator Sederhana ===');

    var angka1 = masukkanAngka('Masukkan bilangan pertama  : ');
    var angka2 = masukkanAngka('Masukkan bilangan kedua : ');

    String pilihan = pilihOperasi();

    try {
      switch (pilihan) {
        case '1':
          print('Hasil: ${kalkulator.tambah(angka1, angka2)}');
          break;
        case '2':
          print('Hasil: ${kalkulator.kurang(angka1, angka2)}');
          break;
        case '3':
          print('Hasil: ${kalkulator.kali(angka1, angka2)}');
          break;
        case '4':
          print('Hasil: ${kalkulator.bagi(angka1, angka2)}');
          break;
      }
    } catch (e) {
      print(e);
    }

    stdout.write('\nApakah ingin menghitung lagi? (Y/T) : ');
    final jawab = stdin.readLineSync()?.toUpperCase();
    lanjut = jawab == 'Y';
  }

  print('Program selesai.');
}

