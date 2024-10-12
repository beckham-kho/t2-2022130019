import 'package:flutter/material.dart';
import 'package:t2_2022130019/models/jadwal.dart';
import 'package:intl/intl.dart';
import 'package:t2_2022130019/navigation.dart';
import 'package:provider/provider.dart';
import 'package:t2_2022130019/providers/profile_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yMd').format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.transparent,
                        backgroundImage: Image.asset('img/1.png').image
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              child: Consumer<ProfileProvider>(
                                builder: (context, value, child) {
                                  final profile = value.profile;
                                  
                                  return Text(
                                    profile.name,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  );
                                }
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                'Kelas IX A',
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.notifications_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Jadwal Pelajaran',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final Jadwal jadwal = daftarJadwal[index];
                      return Padding(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 190,
                            color: const Color.fromARGB(255, 235, 136, 136),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        jadwal.mapel,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        jadwal.tanggal,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    jadwal.namaGuru,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      );
                    },
                    itemCount: daftarJadwal.length,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Rekap Nilai Bulanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Bulan 1 | Semester Ganjil',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    color: Colors.blue.shade50,
                    child: DataTable(
                      columnSpacing: 25.0,
                      headingRowHeight: 30.0,
                      horizontalMargin: 10.0,
                      dataRowMaxHeight: double.infinity,
                      dataRowMinHeight: 30.0,
                      columns: const [
                        DataColumn(label: Text('Mata Pelajaran')),
                        DataColumn(label: Text('Latihan')),
                        DataColumn(label: Text('Tugas')),
                        DataColumn(label: Text('Kuis')),
                      ], 
                      rows: const [
                        DataRow(
                          cells: [
                            DataCell(Text('Matematika Wajib')),
                            DataCell(Text('90')),
                            DataCell(Text('80')),
                            DataCell(Text('87')),
                          ]
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Bahasa Indonesia')),
                            DataCell(Text('79')),
                            DataCell(Text('80')),
                            DataCell(Text('70')),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Sejarah Peminatan')),
                            DataCell(Text('80')),
                            DataCell(Text('85')),
                            DataCell(Text('-')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const Navigation(1),
                      )
                    );
                  },
                  child: const Text('Lihat Selengkapnya >>>'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Pengumuman',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      onTap: () {},
                      leading: Image.asset('img/2.jpg'),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'SMA Fajar Dunia Hackaton Programming Challenge 2024',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'SMA Fajar Dunia Hackaton Programming Competition 2024 diadakan kembali...',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      onTap: () {},
                      leading: Image.asset('img/4.jpg'),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Kerja Bakti Go Green September',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Kepada seluruh warga sekolah SMA Fajar Dunia diharapkan untuk mengikuti kegiatan kerja...',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: () {},
                  child: const Text('Lihat Selengkapnya >>>'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}