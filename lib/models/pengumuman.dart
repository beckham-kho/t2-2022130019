import 'package:flutter/material.dart';

class Pengumuman {
  Image foto;
  String judul;
  String deskripsi;

  Pengumuman({
    required this.foto,
    required this.judul,
    required this.deskripsi,
  });
}

var daftarPengumuman = [
  Pengumuman(
  foto: Image.asset('img/1.png'),
  judul: 'Pembayaran SPP Semester Ganjil Tahun Pelajaran 2024/2025',
  deskripsi: 'Pembayaran SPP Semester Ganjil Tahun Pelajaran 2024/2025 dapat...'
  ),
  Pengumuman(
  foto: Image.asset('img/2.jpg'),
  judul: 'Lomba Programming Website',
  deskripsi: 'Lomba programming website tahunan diadakan kembali... '
  ),
  Pengumuman(
  foto: Image.asset('img/3.png'),
  judul: 'Ini Judul',
  deskripsi: 'Pembayaran SPP Semester Ganjil Tahun Pelajaran 2024/2025 dapat dilakukan di tata usaha sekolah'
  ),
];