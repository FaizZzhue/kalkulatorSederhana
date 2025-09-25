import 'package:flutter_project1/flutter_project1.dart' as flutter_project1;


class Kalkulator {
  double tambah(double angka1, double angka2) => angka1 + angka2;
  double kurang(double angka1, double angka2) => angka1 - angka2;
  double kali(double angka1, double angka2) => angka1 * angka2;
  double bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      throw Exception("Error: Tidak bisa membagi dengan nol");
    }
    return angka1 / angka2;
  }
}