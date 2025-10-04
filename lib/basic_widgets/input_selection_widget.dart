import 'package:flutter/material.dart';

class InputSelectionWidget extends StatefulWidget {
  const InputSelectionWidget({super.key});

  @override
  State<InputSelectionWidget> createState() => _InputSelectionWidgetState();
}

class _InputSelectionWidgetState extends State<InputSelectionWidget> {
  final TextEditingController _nameController = TextEditingController();
  String? _selectedMajor;
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input & Selection Widget'),
        backgroundColor: const Color.fromARGB(255, 202, 177, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Masukkan Nama:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Contoh: Nadyne Rosalia',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pilih Jurusan:',
              style: TextStyle(fontSize: 16),
            ),
            DropdownButton<String>(
              value: _selectedMajor,
              hint: const Text('Pilih jurusan'),
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'D4 TI', child: Text('D4 Teknologi Informasi')),
                DropdownMenuItem(value: 'D3 MI', child: Text('D3 Manajemen Informatika')),
                DropdownMenuItem(value: 'D4 SI', child: Text('D4 Sistem Informasi Bisnis')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedMajor = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result =
                        'Halo, ${_nameController.text} dari jurusan $_selectedMajor!';
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 200, 200, 200),
                ),
                child: const Text('Kirim'),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
