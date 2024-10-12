class Jadwal {
  String mapel;
  String tanggal;
  String namaGuru;

  Jadwal({
    required this.mapel,
    required this.tanggal,
    required this.namaGuru,
  });
}

var daftarJadwal = [
  Jadwal(
    mapel: 'Sejarah Wajib',
    tanggal: 'Senin, 07.00-08.30',
    namaGuru: 'Ayla Putri, S.Pd.'
  ),
  Jadwal(
    mapel: 'Fisika',
    tanggal: 'Senin, 08.30-11.30',
    namaGuru: 'Budi Gunawan, S.T.'
  ),
  Jadwal(
    mapel: 'Bahasa Indonesia',
    tanggal: 'Senin, 12.00-13.30',
    namaGuru: 'Chika, S.Pd.'
  ),
];