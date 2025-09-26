class Kalkulator {
  double angka1;
  double angka2;

  Kalkulator(this.angka1, this.angka2);

  double tambah() => angka1 + angka2;
  double kurang() => angka1 - angka2;
  double kali() => angka1 * angka2;
  double bagi() {
    if (angka2 == 0) {
      throw Exception("Error: Tidak bisa membagi dengan nol");
    }
    return angka1 / angka2;
  }
}