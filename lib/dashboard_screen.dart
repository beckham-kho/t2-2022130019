import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Rekap Nilai Bulanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Bulan 1 | Semester Ganjil',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                DataTable(
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
                    DataRow(
                      cells: [
                        DataCell(Text('PJOK')),
                        DataCell(Text('-')),
                        DataCell(Text('85')),
                        DataCell(Text('70')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('Bahasa Inggris')),
                        DataCell(Text('70')),
                        DataCell(Text('70')),
                        DataCell(Text('65')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}